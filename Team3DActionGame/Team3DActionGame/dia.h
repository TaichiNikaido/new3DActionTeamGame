#pragma once
//====================================================================
//
// �_�C�A�̏��� (dia.h)
// Author : ��{��
//
//====================================================================
#ifndef _DIA_H_
#define _DIA_H_

//================================================
// �C���N���[�h�t�@�C��
//================================================
#include "main.h"
#include "model_himiya.h"

//================================================
// �}�N����`
//================================================
#define COLLISION_SIZE D3DXVECTOR3(200.0f, 200.0f, 200.0f)

//================================================
// �N���X�錾
//================================================

// UI�N���X
class CDia : public CModelHimiya
{
public:
	CDia();
	~CDia();
	HRESULT Init(void);
	void Uninit(void);
	void Update(void);
	void Draw(void);
	static HRESULT Load(void);
	static void Unload(void);
	static CDia *Create(D3DXVECTOR3 pos);
private:
	static LPDIRECT3DTEXTURE9		m_pTexture;
	static LPD3DXMESH				m_pMesh;
	static LPD3DXBUFFER				m_pBuffMat;
	static DWORD					m_nNumMat;
	D3DXVECTOR3						m_rot;
};

#endif

