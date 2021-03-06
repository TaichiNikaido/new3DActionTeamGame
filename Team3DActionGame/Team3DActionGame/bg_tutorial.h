//=============================================================================
//
// tutorial背景 [bg_title.h]
// Author : 二階堂汰一
//
//=============================================================================
#ifndef _BG_TUTORIAL_H_
#define _BG_TUTORIAL_H_

//*****************************************************************************
// ヘッダファイルのインクルード
//*****************************************************************************
#include "scene2d.h"

//*****************************************************************************
// マクロ定義
//*****************************************************************************

//*****************************************************************************
// 前方宣言
//*****************************************************************************

//*****************************************************************************
// 構造体定義
//*****************************************************************************

//*****************************************************************************
// クラス定義
//*****************************************************************************
class CTutorialBG :public CScene2d
{
public:
	typedef enum
	{
		TEX_TYPE_NONE = -1,
		TEX_TYPE_KEYBOARD,
		TEX_TYPE_CONTROLLER,
		TEX_TYPE_MAX
	}TEX_TYPE;
	CTutorialBG(int nPriority = OBJTYPE_TUTORIAL);
	~CTutorialBG();
	static HRESULT TextureLoad(void);
	static void TextureUnload(void);
	static CTutorialBG * Create(void);
	HRESULT Init(void);
	void Uninit(void);
	void Update(void);
	void Draw(void);
private:
	static LPDIRECT3DTEXTURE9 m_pTexture[TEX_TYPE_MAX];	//テクスチャへのポインタ
};
#endif