//=============================================================================
//
// �A�C�e�� [item.cpp]
// Author : ��K������
//
//=============================================================================

//*****************************************************************************
// �x������
//*****************************************************************************
#define _CRT_SECURE_NO_WARNINGS

//*****************************************************************************
// �w�b�_�t�@�C���̃C���N���[�h
//*****************************************************************************
#include <stdio.h>
#include <stdlib.h>
#include "main.h"
#include "manager.h"
#include "mode_game.h"
#include "renderer.h"
#include "item.h"

//*****************************************************************************
// �}�N����`
//*****************************************************************************
#define INITIAL_POSITION (D3DXVECTOR3(0.0f,0.0f,0.0f))			//�ʒu�̏����l
#define INITIAL_SIZE (D3DXVECTOR3(0.0f,0.0f,0.0f))				//�T�C�Y�̏����l
#define INITIAL_COLLISIION_SIZE (D3DXVECTOR3(0.0f,0.0f,0.0f))	//�Փ˔���p�T�C�Y�̏����l
#define INITIAL_ROTATION (D3DXVECTOR3(0.0f,0.0f,0.0f))			//��]�̏����l
#define INITIAL_MOVE (D3DXVECTOR3(0.0f,0.0f,0.0f))				//�ړ��ʂ̏����l

//*****************************************************************************
// �ÓI�����o�ϐ��̏�����
//*****************************************************************************

//=============================================================================
// �R���X�g���N�^
//=============================================================================
CItem::CItem()
{
	m_Position = INITIAL_POSITION;							//�ʒu
	m_PositionOld = INITIAL_POSITION;						//�O�̈ʒu
	m_Size = INITIAL_SIZE;									//�T�C�Y
	m_CollisionSize = INITIAL_SIZE;							//�����蔻��p�T�C�Y
	m_Rotation = INITIAL_ROTATION;							//��]
	memset(m_apScriptPass, NULL, sizeof(m_apScriptPass));	//�X�N���v�g�p�X
}

//=============================================================================
// �f�X�g���N�^
//=============================================================================
CItem::~CItem()
{
}

//=============================================================================
// �����������֐�
//=============================================================================
HRESULT CItem::Init(void)
{
	return S_OK;
}

//=============================================================================
// �I�������֐�
//=============================================================================
void CItem::Uninit(void)
{
	//�j�������֐��Ăяo��
	Release();
}

//=============================================================================
// �X�V�����֐�
//=============================================================================
void CItem::Update(void)
{
}

//=============================================================================
// �`�揈���֐�
//=============================================================================
void CItem::Draw(void)
{
}

//=============================================================================
// �Փˏ����֐��֐�
//=============================================================================
bool CItem::bCollision(D3DXVECTOR3 TargetPositon, D3DXVECTOR3 TargetSize)
{
	bool bCollision = false;
	return bCollision;
}

//=============================================================================
// �f�[�^�ǂݍ��݊֐�
//=============================================================================
void CItem::DataLoad(void)
{
	char aReadText[MAX_TEXT];			//�ǂݍ��񂾃e�L�X�g
	char aCurrentText[MAX_TEXT];		//���݂̃e�L�X�g
	char aUnnecessaryText[MAX_TEXT];	//�s�K�v�ȃe�L�X�g
	memset(aReadText, NULL, sizeof(aReadText));
	memset(aCurrentText, NULL, sizeof(aCurrentText));
	memset(aUnnecessaryText, NULL, sizeof(aUnnecessaryText));
	//�t�@�C���̃|�C���^
	FILE *pFile = NULL;
	//�����t�@�C���̃|�C���^��NULL�̏ꍇ
	if (pFile == NULL)
	{
		//�t�@�C���̓ǂݍ���
		pFile = fopen(m_apScriptPass[0], "r");
	}
	//�t�@�C�����J�����Ƃ��ł�����
	if (pFile != NULL)
	{
		//SCRIPT�̕�����������
		while (strcmp(aCurrentText, "SCRIPT") != 0)
		{
			//�ǂݍ��񂾃e�L�X�g���i�[����
			fgets(aReadText, sizeof(aReadText), pFile);
			//�ǂݍ��񂾃e�L�X�g�����݂̃e�L�X�g�Ɋi�[
			sscanf(aReadText, "%s", &aCurrentText);
		}
		//���݂̃e�L�X�g��SCRIPT��������
		if (strcmp(aCurrentText, "SCRIPT") == 0)
		{
			//END_SCRIPT�̕�����������܂œǂ�
			while (strcmp(aCurrentText, "END_SCRIPT") != 0)
			{
				//�ǂݍ��񂾃e�L�X�g���i�[����
				fgets(aReadText, sizeof(aReadText), pFile);
				//�ǂݍ��񂾃e�L�X�g�����݂̃e�L�X�g�Ɋi�[
				sscanf(aReadText, "%s", &aCurrentText);
				//���݂̃e�L�X�g��PARAMETER_SET��������
				if (strcmp(aCurrentText, "PARAMETER_SET") == 0)
				{
					//END_PARAMETER_SET�̕�����������܂œǂ�
					while (strcmp(aCurrentText, "END_PARAMETER_SET") != 0)
					{
						//�ǂݍ��񂾃e�L�X�g���i�[����
						fgets(aReadText, sizeof(aReadText), pFile);
						//�ǂݍ��񂾃e�L�X�g�����݂̃e�L�X�g�Ɋi�[
						sscanf(aReadText, "%s", &aCurrentText);
						//���݂̃e�L�X�g��SIZE��������
						if (strcmp(aCurrentText, "SIZE") == 0)
						{
							//�T�C�Y�̐ݒ�
							sscanf(aReadText, "%s %s %f %f %f", &aUnnecessaryText, &aUnnecessaryText, &m_Size.x, &m_Size.y, &m_Size.z);
						}
						//���݂̃e�L�X�g��COLLISION_SIZE��������
						if (strcmp(aCurrentText, "COLLISION_SIZE") == 0)
						{
							//�T�C�Y�̐ݒ�
							sscanf(aReadText, "%s %s %f %f %f", &aUnnecessaryText, &aUnnecessaryText, &m_CollisionSize.x, &m_CollisionSize.y, &m_CollisionSize.z);
						}
						//���݂̃e�L�X�g��ROT��������
						if (strcmp(aCurrentText, "ROT") == 0)
						{
							//��]���̓ǂݍ���
							sscanf(aReadText, "%s %s %f %f %f", &aUnnecessaryText, &aUnnecessaryText, &m_Rotation.x, &m_Rotation.y, &m_Rotation.z);
						}
					}
				}
			}
		}
		//�t�@�C�������
		fclose(pFile);
	}
}
