//===============================================
//
// 倒木処理 (wood.cpp)
// Author : 樋宮匠
//
//===============================================

//========================
// インクルードファイル
//========================
#include "wood.h"
#include "manager.h"
#include "renderer.h"
#include "player.h"
#include "mode_game.h"

//========================
// 静的メンバ変数宣言
//========================
LPD3DXMESH	CWood::m_pMesh = NULL;
LPD3DXBUFFER CWood::m_pBuffMat = NULL;
DWORD CWood::m_nNumMat = NULL;
LPDIRECT3DTEXTURE9 CWood::m_pTexture = NULL;

//=============================================================================
// コンストラクタ
//=============================================================================
CWood::CWood()
{
	m_rot = D3DXVECTOR3(0.0f, 0.0f, 0.0f);
}

//=============================================================================
// デストラクタ
// Author : 樋宮匠
//=============================================================================
CWood::~CWood()
{
}

//=============================================================================
// 初期化処理
// Author : 樋宮匠
//=============================================================================
HRESULT CWood::Init(void)
{
	CModelHimiya::Init();

	BindMesh(m_pMesh, m_pBuffMat, m_nNumMat);

	m_rot = D3DXVECTOR3(0.0f, 0.0f, 0.0f);

	return S_OK;
}

//=============================================================================
// 終了処理
// Author : 樋宮匠
//=============================================================================
void CWood::Uninit(void)
{
	CModelHimiya::Uninit();
}

//=============================================================================
// 更新処理
// Author : 樋宮匠
//=============================================================================
void CWood::Update(void)
{
	CPlayer *pPlayer = CGameMode::GetPlayer();
	D3DXVECTOR3 playerPos = pPlayer->GetPos();
	D3DXVECTOR3 pos = GetPos();
	D3DXVECTOR3 rot = GetRot();
	bool bJump = pPlayer->GetIsJump();

	if (playerPos.x + COLLISION_SIZE_PLAYER.x / 2 >= pos.x - COLLISION_SIZE_WOOD.x / 2 &&
		playerPos.x - COLLISION_SIZE_PLAYER.x / 2 <= pos.x + COLLISION_SIZE_WOOD.x / 2 &&
		playerPos.z + COLLISION_SIZE_PLAYER.z / 2 >= pos.z - COLLISION_SIZE_WOOD.z / 2 &&
		playerPos.z - COLLISION_SIZE_PLAYER.z / 2 <= pos.z + COLLISION_SIZE_WOOD.z / 2 &&
		!bJump)
	{
		// プレイヤーを止める
	}

	CModelHimiya::Update();
}

//=============================================================================
// 描画処理
// Author : 樋宮匠
//=============================================================================
void CWood::Draw(void)
{
	LPDIRECT3DDEVICE9 pDevice = CManager::GetRenderer()->GetDevice();

	CModelHimiya::Draw();
}

//=============================================================================
// テクスチャ・モデルデータ読み込み処理
// Author : 樋宮匠
//=============================================================================
HRESULT CWood::Load(void)
{
	LPDIRECT3DDEVICE9 pDevice = CManager::GetRenderer()->GetDevice();

	D3DXLoadMeshFromX(LPCSTR("./data/MODEL/wood.x"), D3DXMESH_SYSTEMMEM, pDevice, NULL, &m_pBuffMat, NULL, &m_nNumMat, &m_pMesh);

	return S_OK;
}

//=============================================================================
// テクスチャ・モデルデータ破棄処理
// Author : 樋宮匠
//=============================================================================
void CWood::Unload(void)
{
	if (m_pMesh != NULL)
	{
		m_pMesh->Release();
		m_pMesh = NULL;
	}
	if (m_pBuffMat != NULL)
	{
		m_pBuffMat->Release();
		m_pBuffMat = NULL;
	}
	if (m_pTexture != NULL)
	{
		m_pTexture->Release();
		m_pTexture = NULL;
	}
}

//=============================================================================
// インスタンス生成処理
// Author : 樋宮匠
//=============================================================================
CWood * CWood::Create(D3DXVECTOR3 pos)
{
	CWood *pCube = NULL;
	pCube = new CWood;
	pCube->Init();
	pCube->SetPos(pos);
	return pCube;
}
