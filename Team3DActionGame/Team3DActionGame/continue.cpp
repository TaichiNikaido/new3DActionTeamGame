//=============================================================================
//
// コンティニュー画面 [continue.cpp]
// Author : 二階堂汰一
//
//=============================================================================

//*****************************************************************************
// ヘッダファイルのインクルード
//*****************************************************************************
#include "main.h"
#include "manager.h"
#include "mode_game.h"
#include "sound.h"
#include "keyboard.h"
#include "joystick.h"
#include "continue.h"
#include "continue_logo.h"
#include "continue_button_manager.h"
#include "bg_continue.h"
#include "player.h"

//*****************************************************************************
// マクロ定義
//*****************************************************************************

//*****************************************************************************
// 静的メンバ変数の初期化
//*****************************************************************************

//=============================================================================
// コンストラクタ
//=============================================================================
CContinue::CContinue()
{
}

//=============================================================================
// デストラクタ
//=============================================================================
CContinue::~CContinue()
{
}

//=============================================================================
// 生成処理関数
//=============================================================================
CContinue * CContinue::Create()
{
	//コンティニュー画面のポインタ
	CContinue * pContinue = NULL;
	//もしコンティニュー画面がNULLの場合
	if (pContinue == NULL)
	{
		//コンティニュー画面のメモリ確保
		pContinue = new CContinue;
		//もしコンティニュー画面がNULLじゃない場合
		if (pContinue != NULL)
		{
			//初期化処理関数呼び出し
			pContinue->Init();
		}
	}
	//コンティニュー画面のポインタ
	return pContinue;
}

//=============================================================================
// 初期化処理関数
//=============================================================================
HRESULT CContinue::Init(void)
{
	//全生成処理関数呼び出し
	CreateAll();
	return S_OK;
}

//=============================================================================
// 終了処理関数
//=============================================================================
void CContinue::Uninit(void)
{
	//破棄処理関数呼び出し
	Release();
}

//=============================================================================
// 更新処理関数
//=============================================================================
void CContinue::Update(void)
{
	//CPlayer * pPlayer = CGameMode::GetPlayer();
	////もしプレイヤーがコンティニューしたら
	//if (pPlayer->GetContinue() == true)
	//{
	//	//終了処理関数呼び出し
	//	Uninit();
	//	return;
	//}
}

//=============================================================================
// 描画処理関数
//=============================================================================
void CContinue::Draw(void)
{
}

//=============================================================================
// 全生成処理関数
//=============================================================================
void CContinue::CreateAll(void)
{
	CContinueBG::Create();
	CContinueLogo::Create();
	CContinueButtonManager::Create();
}
