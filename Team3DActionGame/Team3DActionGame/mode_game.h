//=============================================================================
//
// �Q�[�����[�h [mode_game.h]
// Author : ��K������
//
//=============================================================================
#ifndef _MODE_GAME_H_
#define _MODE_GAME_H_

//*****************************************************************************
// �w�b�_�t�@�C���̃C���N���[�h
//*****************************************************************************
#include "scene.h"

//*****************************************************************************
// �}�N����`
//*****************************************************************************

//*****************************************************************************
// �O���錾
//*****************************************************************************
class CLight;
class CCamera;
class CPlayer;
class CEnemy;
class CUi;

//*****************************************************************************
// �N���X��`
//*****************************************************************************
class CGameMode : CScene
{
public:
	CGameMode();
	~CGameMode();
	static CGameMode * Create();
	HRESULT Init(void);
	void Uninit(void);
	void Update(void);
	void Draw(void);
	static CCamera * GetCamera(void) { return m_pCamera; }
	static CPlayer * GetPlayer(void) { return m_pPlayer; }
	static CEnemy * GetEnemy(void) { return m_pEnemy; }
private:
	void InitCreateAll(void);
	void UpdateCreateAll(void);
	static CCamera * m_pCamera;	//�J�����̃|�C���^
	static CPlayer * m_pPlayer;	//�v���C���[�̃|�C���^
	static CEnemy * m_pEnemy;	//�G�̃|�C���^
	static CUi * m_pUi;			//UI�̃|�C���^
	CLight * m_pLight;			//���C�g�̃|�C���^
};
#endif
