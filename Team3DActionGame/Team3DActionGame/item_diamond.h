//=============================================================================
//
// ダイアモンド [item_diamond.h]
// Author : 二階堂汰一
//
//=============================================================================
#ifndef _ITEM_DIAMOND_H_
#define _ITEM_DIAMOND_H_

//*****************************************************************************
// ヘッダファイルのインクルード
//*****************************************************************************
#include "item.h"
#include "model.h"
#include "motion.h"

//*****************************************************************************
// マクロ定義
//*****************************************************************************

//*****************************************************************************
// 前方宣言
//*****************************************************************************

//*****************************************************************************
// クラス定義
//*****************************************************************************
class CDiamond : public CItem
{
public:
	CDiamond();
	~CDiamond();
	static CDiamond * Create(D3DXVECTOR3 Position);
	HRESULT Init(void);
	void Uninit(void);
	void Update(void);
	void Draw(void);
private:
	void Collision(void);
	void Give(void);
};
#endif
