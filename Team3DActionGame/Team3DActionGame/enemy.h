//=============================================================================
//
// �G���� [enemy.h]
// Author : ��K������
//
//=============================================================================
#ifndef _ENEMY_H_
#define _ENEMY_H_

//*****************************************************************************
// �C���N���[�h�t�@�C��
//*****************************************************************************
#include "main.h"
#include "character.h"

//*****************************************************************************
// �}�N����`
//*****************************************************************************

//*****************************************************************************
// �v���C���[�N���X��`
//*****************************************************************************
class CEnemy :public CCharacter
{
public:
	CEnemy();
	~CEnemy();

	// ���f���̊e�p�[�c
	typedef enum
	{
		PARTS_WAIST = 0,
		PARTS_BODY,
		PARTS_HEAD,
		PARTS_RARM,
		PARTS_LARM,
		PARTS_RLEG,
		PARTS_RSHOE,
		PARTS_LLEG,
		PARTS_LSHOE,
		PARTS_MAINTAIL,
		PARTS_SUBTAIL,
		PARTS_ENDTAIL,
		PARTS_CHIN,
		PARTS_MAX,
	}PARTS;
	typedef enum
	{
		MOTION_NONE = -1,
		MOTION_DUSH,
		MOTION_MEAL,
		MOTION_FALL,
		MOTION_ATTACK
	}MOTIONENEMY;
	static HRESULT Load(void);
	static void Unload(void);
	static CEnemy * Create(void);
	HRESULT Init(void);
	void Uninit(void);
	void Update(void);
	void Draw(void);
	void Eat(void);
private:
	void AutoRun(void);
	void Attack(void);
	void Death(void);
	void DataLoad(void);
	static LPDIRECT3DTEXTURE9 m_pTexture;			// �e�N�X�`���ւ̃|�C���^
	static LPD3DXMESH m_pMesh[PARTS_MAX];
	static LPD3DXBUFFER m_pBuffMat[PARTS_MAX];
	static DWORD m_nNumMat[PARTS_MAX];
	D3DXVECTOR3 m_Size;										//�T�C�Y
	D3DXVECTOR3 m_Move;										//�ړ���
	int m_nMeatEatTime;										//����H�ׂ鎞��
	int m_nMeatEatTimeCount;								//����H�ׂ鎞�Ԃ̃J�E���g
	int m_nAttackCoolTime;									//�U���̃N�[���^�C��
	int m_nAttackCoolTimeCount;								//�U���̃N�[���^�C���J�E���g
	float m_fAutoRunSpeed;									//�I�[�g�����̑��x
	bool m_bEat;											//�H�������Ă邩�ǂ���
	bool m_bAttack;											//�U����������
};
#endif