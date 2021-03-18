//=============================================================================
//
// �A�C�e�� [item.h]
// Author : ��K������
//
//=============================================================================
#ifndef _ITEM_H_
#define _ITEM_H_

//*****************************************************************************
// �w�b�_�t�@�C���̃C���N���[�h
//*****************************************************************************
#include "scene.h"
#include "model.h"
#include "motion.h"

//*****************************************************************************
// �}�N����`
//*****************************************************************************

//*****************************************************************************
// �O���錾
//*****************************************************************************

//*****************************************************************************
// �N���X��`
//*****************************************************************************
class CItem : public CScene
{
public:
	CItem();
	~CItem();
	HRESULT Init(void);
	void Uninit(void);
	void Update(void);
	void Draw(void);
	bool bCollision(D3DXVECTOR3 TargetPositon, D3DXVECTOR3 TargetSize);
	void SetPosition(D3DXVECTOR3 Position) { m_Position = Position; }
	void SetSize(D3DXVECTOR3 Size) { m_Size = Size; }
	void SetCollisionSize(D3DXVECTOR3 CollisionSize) { m_CollisionSize = CollisionSize; }
	void SetRotation(D3DXVECTOR3 Rotation) { m_Rotation = Rotation; }
	void SetScriptPass(char * pDataPass) { m_apScriptPass[0] = pDataPass; }
	D3DXVECTOR3 GetPosition(void) { return m_Position; }
	D3DXVECTOR3 GetCollisionSize(void) { return m_CollisionSize; }
private:
	void DataLoad(void);
	D3DXVECTOR3 m_Position;									//�ʒu
	D3DXVECTOR3 m_PositionOld;								//�O�̈ʒu
	D3DXVECTOR3 m_Size;										//�T�C�Y
	D3DXVECTOR3 m_CollisionSize;							//�����蔻��p�T�C�Y
	D3DXVECTOR3 m_Rotation;									//��]
	const char * m_apScriptPass[MAX_PASS_LETTER];			//�f�[�^�X�N���v�g�̃p�X
};
#endif
