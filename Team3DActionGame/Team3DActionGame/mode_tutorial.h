//=============================================================================
//
// チュートリアルモード [mode_tutorial.h]
// Author : 二階堂汰一
//
//=============================================================================
#ifndef _MODE_TUTORIAL_H_
#define _MODE_TUTORIAL_H_

//*****************************************************************************
// ヘッダファイルのインクルード
//*****************************************************************************
#include "scene.h"

//*****************************************************************************
// マクロ定義
//*****************************************************************************

//*****************************************************************************
// 前方宣言
//*****************************************************************************

//*****************************************************************************
// クラス定義
//*****************************************************************************
class CTutorialMode : CScene
{
public:
	CTutorialMode();
	~CTutorialMode();
	static CTutorialMode * Create();
	HRESULT Init(void);
	void Uninit(void);
	void Update(void);
	void Draw(void);
private:
	void CreateAll(void);
};
#endif
