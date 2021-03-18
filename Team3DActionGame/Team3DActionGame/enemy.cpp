//=============================================================================
//
// �G���� [enemy.cpp]
// Author : ��K������
//
//=============================================================================

//*****************************************************************************
// �x������
//*****************************************************************************
#define _CRT_SECURE_NO_WARNINGS

//*****************************************************************************
// �C���N���[�h�t�@�C��
//*****************************************************************************
#include <stdio.h>
#include <stdlib.h>
#include "enemy.h"
#include "manager.h"
#include "renderer.h"
#include "scene3d.h"

//*****************************************************************************
// �}�N����`
//*****************************************************************************
#define SCRIPT_PASS ("Data/Script/EnemyData.txt")				//�X�N���v�g�p�X
#define INITIAL_POSITION (D3DXVECTOR3(0.0f,0.0f,0.0f))			//�ʒu�̏����l
#define INITIAL_SIZE (D3DXVECTOR3(0.0f,0.0f,0.0f))				//�T�C�Y�̏����l
#define INITIAL_COLLISIION_SIZE (D3DXVECTOR3(0.0f,0.0f,0.0f))	//�Փ˔���p�T�C�Y�̏����l
#define INITIAL_ROTATION (D3DXVECTOR3(0.0f,0.0f,0.0f))			//��]�̏����l
#define INITIAL_MOVE (D3DXVECTOR3(0.0f,0.0f,0.0f))				//�ړ��ʂ̏����l
#define MINIMUM_TIME (0)										//���Ԃ̏����l
#define INITIAL_MOVE_SPEED (0.0f)								//�ړ����x�̏����l

//*****************************************************************************
// �ÓI�����o�ϐ��錾
//*****************************************************************************
LPDIRECT3DTEXTURE9 CEnemy::m_pTexture = NULL;
LPD3DXMESH CEnemy::m_pMesh[PARTS_MAX] = {};
LPD3DXBUFFER CEnemy::m_pBuffMat[PARTS_MAX] = {};
DWORD CEnemy::m_nNumMat[PARTS_MAX] = {};

//=============================================================================
// �R���X�g���N�^
//=============================================================================
CEnemy::CEnemy()
{
	m_Size = INITIAL_SIZE;							//�T�C�Y
	m_Move = INITIAL_MOVE;							//�ړ���
	m_nMeatEatTime = MINIMUM_TIME;					//����H�ׂ鎞��
	m_nMeatEatTimeCount = MINIMUM_TIME;				//����H�ׂ鎞�Ԃ̃J�E���g
	m_nAttackCoolTime = MINIMUM_TIME;				//�U���̃N�[���^�C��
	m_nAttackCoolTimeCount = MINIMUM_TIME;			//�U���̃N�[���^�C���̃J�E���g
	m_fAutoRunSpeed = INITIAL_MOVE_SPEED;			//�I�[�g�����̑��x
	m_bEat = false;									//�H�������Ă��邩
	m_bAttack = false;								//�U����������
}

//=============================================================================
// �f�X�g���N�^
//=============================================================================
CEnemy::~CEnemy()
{
}
//=============================================================================
// �e�N�X�`���ǂݍ��ݏ���
//=============================================================================
HRESULT CEnemy::Load(void)
{
	LPDIRECT3DDEVICE9 pDevice = CManager::GetRenderer()->GetDevice();

	// �v���C���[1
	D3DXLoadMeshFromX(LPCSTR("./Data/model/enemy/00_Waist.x"), D3DXMESH_SYSTEMMEM, pDevice, NULL, &m_pBuffMat[PARTS_WAIST], NULL, &m_nNumMat[PARTS_WAIST], &m_pMesh[PARTS_WAIST]);
	D3DXLoadMeshFromX(LPCSTR("./Data/model/enemy/01_Body.x"), D3DXMESH_SYSTEMMEM, pDevice, NULL, &m_pBuffMat[PARTS_BODY], NULL, &m_nNumMat[PARTS_BODY], &m_pMesh[PARTS_BODY]);
	D3DXLoadMeshFromX(LPCSTR("./Data/model/enemy/02_Head.x"), D3DXMESH_SYSTEMMEM, pDevice, NULL, &m_pBuffMat[PARTS_HEAD], NULL, &m_nNumMat[PARTS_HEAD], &m_pMesh[PARTS_HEAD]);
	D3DXLoadMeshFromX(LPCSTR("./Data/model/enemy/03_RightArm.x"), D3DXMESH_SYSTEMMEM, pDevice, NULL, &m_pBuffMat[PARTS_RARM], NULL, &m_nNumMat[PARTS_RARM], &m_pMesh[PARTS_RARM]);
	D3DXLoadMeshFromX(LPCSTR("./Data/model/enemy/04_LeftArm.x"), D3DXMESH_SYSTEMMEM, pDevice, NULL, &m_pBuffMat[PARTS_LARM], NULL, &m_nNumMat[PARTS_LARM], &m_pMesh[PARTS_LARM]);
	D3DXLoadMeshFromX(LPCSTR("./Data/model/enemy/05_RightLeg.x"), D3DXMESH_SYSTEMMEM, pDevice, NULL, &m_pBuffMat[PARTS_RLEG], NULL, &m_nNumMat[PARTS_RLEG], &m_pMesh[PARTS_RLEG]);
	D3DXLoadMeshFromX(LPCSTR("./Data/model/enemy/06_RightShoe.x"), D3DXMESH_SYSTEMMEM, pDevice, NULL, &m_pBuffMat[PARTS_RSHOE], NULL, &m_nNumMat[PARTS_RSHOE], &m_pMesh[PARTS_RSHOE]);
	D3DXLoadMeshFromX(LPCSTR("./Data/model/enemy/07_LeftLeg.x"), D3DXMESH_SYSTEMMEM, pDevice, NULL, &m_pBuffMat[PARTS_LLEG], NULL, &m_nNumMat[PARTS_LLEG], &m_pMesh[PARTS_LLEG]);
	D3DXLoadMeshFromX(LPCSTR("./Data/model/enemy/08_LeftShoe.x"), D3DXMESH_SYSTEMMEM, pDevice, NULL, &m_pBuffMat[PARTS_LSHOE], NULL, &m_nNumMat[PARTS_LSHOE], &m_pMesh[PARTS_LSHOE]);
	D3DXLoadMeshFromX(LPCSTR("./Data/model/enemy/09_MainTail.x"), D3DXMESH_SYSTEMMEM, pDevice, NULL, &m_pBuffMat[PARTS_MAINTAIL], NULL, &m_nNumMat[PARTS_MAINTAIL], &m_pMesh[PARTS_MAINTAIL]);
	D3DXLoadMeshFromX(LPCSTR("./Data/model/enemy/10_SubTail.x"), D3DXMESH_SYSTEMMEM, pDevice, NULL, &m_pBuffMat[PARTS_SUBTAIL], NULL, &m_nNumMat[PARTS_SUBTAIL], &m_pMesh[PARTS_SUBTAIL]);
	D3DXLoadMeshFromX(LPCSTR("./Data/model/enemy/11_EndTail.x"), D3DXMESH_SYSTEMMEM, pDevice, NULL, &m_pBuffMat[PARTS_ENDTAIL], NULL, &m_nNumMat[PARTS_ENDTAIL], &m_pMesh[PARTS_ENDTAIL]);
	D3DXLoadMeshFromX(LPCSTR("./Data/model/enemy/12_Chin.x"), D3DXMESH_SYSTEMMEM, pDevice, NULL, &m_pBuffMat[PARTS_CHIN], NULL, &m_nNumMat[PARTS_CHIN], &m_pMesh[PARTS_CHIN]);
	return S_OK;
}

//=============================================================================
// �e�N�X�`���j������
//=============================================================================
void CEnemy::Unload(void)
{
	if (m_pTexture != NULL)
	{
		m_pTexture->Release();
		m_pTexture = NULL;
	}
}

//=============================================================================
// �C���X�^���X��������
//=============================================================================
CEnemy * CEnemy::Create(void)
{
	//�G�̃|�C���^
	CEnemy * pEnemy = NULL;
	//�G�̃|�C���^��NULL�̏ꍇ
	if (pEnemy == NULL)
	{
		//�G�̃������m��
		pEnemy = new CEnemy;
		//�G�̃|�C���^��NULL�ł͂Ȃ��ꍇ
		if (pEnemy != NULL)
		{
			//�G�̏����������֐��Ăяo��
			pEnemy->Init();
		}
	}
	//�G�̃|�C���^��Ԃ�
	return pEnemy;
}
//=============================================================================
// ����������
//=============================================================================
HRESULT CEnemy::Init(void)
{
	//�X�N���v�g�f�[�^�ǂݍ��݊֐�
	DataLoad();
	// �p�[�c����ݒ�
	SetPartNum(PARTS_MAX);

	for (int nCount = 0; nCount < PARTS_MAX; nCount++)
	{
		BindMesh(CAnimation::TYPE_ENEMY, nCount, m_pMesh[nCount], m_pBuffMat[nCount], m_nNumMat[nCount]);
	}

	// ���W�E�e�q�֌W�̓ǂݍ���
	LoadModelData("./Data/text/motion_enemy.txt");
	//�L�����N�^�[�̏����������֐��Ăяo��
	CCharacter::Init();
	return S_OK;
}

//=============================================================================
// �I������
//=============================================================================
void CEnemy::Uninit()
{
	//�L�����N�^�[�̏I�������֐��Ăяo��
	CCharacter::Uninit();
}

//=============================================================================
// �X�V����
//=============================================================================
void CEnemy::Update()
{
	//�L�����N�^�[�̍X�V�����֐��Ăяo��
	CCharacter::Update();
	//�I�[�g���������֐��Ăяo��
	AutoRun();
	//�����U�������Ă��Ȃ��ꍇ
	if (m_bAttack == false)
	{
		//�U���̃N�[���^�C�������Z����
		m_nAttackCoolTimeCount++;
		//�����N�[���^�C�����I�������
		if (m_nAttackCoolTimeCount >= m_nAttackCoolTime)
		{
			//�U�������֐��Ăяo��
			Attack();
		}
	}
}

//=============================================================================
// �`�揈��
//=============================================================================
void CEnemy::Draw()
{
	LPDIRECT3DDEVICE9 pDevice = CManager::GetRenderer()->GetDevice();
	//�L�����N�^�[�̕`�揈���֐��Ăяo��
	CCharacter::Draw();
}

//=============================================================================
// �I�[�g���������֐�
//=============================================================================
void CEnemy::AutoRun(void)
{
	//�ʒu���擾����
	D3DXVECTOR3 Position = GetPos();
	//�ړ�������
	m_Move.z = m_fAutoRunSpeed;
	//�ʒu�X�V
	Position += m_Move;
	//�ʒu��ݒ肷��
	SetPos(Position);
}

//=============================================================================
// �U�������֐�
//=============================================================================
void CEnemy::Attack(void)
{
	//�U��������
	m_bAttack = true;
	//�N�[���^�C����0�ɂ���
	m_nAttackCoolTimeCount = MINIMUM_TIME;
	//�v���C���[�ɍU��������
	//
	//�U������߂�
	m_bAttack = false;
}

//=============================================================================
// �H�������֐�
//=============================================================================
void CEnemy::Eat(void)
{
	//�����H������������
	if (m_nMeatEatTimeCount <= m_nMeatEatTime)
	{
		//�ړ��ʂ�0�ɂ���
		m_Move = INITIAL_MOVE;
	}
	else
	{
		//�ړ�������
		m_Move.z = m_fAutoRunSpeed;
	}
}

//=============================================================================
// ���S�����֐�
//=============================================================================
void CEnemy::Death(void)
{
	//�I�������֐��Ăяo��
	Uninit();
	return;
}

//=============================================================================
// �f�[�^�ǂݍ��݊֐�
//=============================================================================
void CEnemy::DataLoad(void)
{
	D3DXVECTOR3 Position = INITIAL_POSITION;	//�ʒu
	D3DXVECTOR3 CollisionSize = INITIAL_SIZE;	//�T�C�Y
	D3DXVECTOR3 Rotation = INITIAL_ROTATION;	//��]
	char aReadText[MAX_TEXT];					//�ǂݍ��񂾃e�L�X�g
	char aCurrentText[MAX_TEXT];				//���݂̃e�L�X�g
	char aUnnecessaryText[MAX_TEXT];			//�s�K�v�ȃe�L�X�g
	memset(aReadText, NULL, sizeof(aReadText));
	memset(aCurrentText, NULL, sizeof(aCurrentText));
	memset(aUnnecessaryText, NULL, sizeof(aUnnecessaryText));
	//�t�@�C���̃|�C���^
	FILE *pFile = NULL;
	//�����t�@�C���̃|�C���^��NULL�̏ꍇ
	if (pFile == NULL)
	{
		//�t�@�C���̓ǂݍ���
		pFile = fopen(SCRIPT_PASS, "r");
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
						//���݂̃e�L�X�g��POS��������
						if (strcmp(aCurrentText, "POS") == 0)
						{
							//�ʒu���̓ǂݍ���
							sscanf(aReadText, "%s %s %f %f %f", &aUnnecessaryText, &aUnnecessaryText, &Position.x, &Position.y, &Position.z);
							//�ʒu��ݒ肷��
							SetPos(Position);
						}
						//���݂̃e�L�X�g��SIZE��������
						if (strcmp(aCurrentText, "SIZE") == 0)
						{
							//�T�C�Y���̓ǂݍ���
							sscanf(aReadText, "%s %s %f %f %f", &aUnnecessaryText, &aUnnecessaryText, &m_Size.x, &m_Size.y, &m_Size.z);
						}
						//���݂̃e�L�X�g��COLLISION_SIZE��������
						if (strcmp(aCurrentText, "COLLISION_SIZE") == 0)
						{
							//�Փ˔���p�T�C�Y�̓ǂݍ���
							sscanf(aReadText, "%s %s %f %f %f", &aUnnecessaryText, &aUnnecessaryText, &CollisionSize.x, &CollisionSize.y, &CollisionSize.z);
						}
						//���݂̃e�L�X�g��ROT��������
						if (strcmp(aCurrentText, "ROT") == 0)
						{
							//��]���̓ǂݍ���
							sscanf(aReadText, "%s %s %f %f %f", &aUnnecessaryText, &aUnnecessaryText, &Rotation.x, &Rotation.y, &Rotation.z);
							//��]�̐ݒ�
							SetRot(D3DXToRadian(Rotation));
						}
						//���݂̃e�L�X�g��MeatEatTime��������
						if (strcmp(aCurrentText, "MeatEatTime") == 0)
						{
							//��]���̓ǂݍ���
							sscanf(aReadText, "%s %s %d", &aUnnecessaryText, &aUnnecessaryText, &m_nMeatEatTime);
						}
						//���݂̃e�L�X�g��AttackCoolTime��������
						if (strcmp(aCurrentText, "AttackCoolTime") == 0)
						{
							//��]���̓ǂݍ���
							sscanf(aReadText, "%s %s %d", &aUnnecessaryText, &aUnnecessaryText, &m_nAttackCoolTime);
						}
						//���݂̃e�L�X�g��AutoRunSpeed��������
						if (strcmp(aCurrentText, "AutoRunSpeed") == 0)
						{
							//�T�C�Y�̐ݒ�
							sscanf(aReadText, "%s %s %f", &aUnnecessaryText, &aUnnecessaryText, &m_fAutoRunSpeed);
							//�ړ��ʂ̐ݒ�
							m_Move.z = m_fAutoRunSpeed;
						}
					}
				}
			}
		}
		//�t�@�C�������
		fclose(pFile);
	}
}