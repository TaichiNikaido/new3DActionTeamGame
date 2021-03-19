//******************************************************************************
// �_�C���̃p�[�e�B�N�� [dia_particle.cpp]
// Author : �ǌ��@�i
//******************************************************************************
//******************************************************************************
//	�C���N���[�h�t�@�C��
//******************************************************************************
#include "main.h"
#include "manager.h"
#include "renderer.h"
#include "dia_particle.h"
//******************************************************************************
//	�}�N����`
//******************************************************************************
#define MAX_LIFE		(30)											// ���C�t�̍ő�l
#define MIN_LIFE		(0)												// ���C�t�ŏ��l
#define RANDOM_ANGLE	(360)											// �p�x�����_��
#define MAX_PARTICLE	(20)											// �p�[�e�B�N���̍ő吔
#define POS				(D3DXVECTOR3(pos.x,pos.y,pos.z))				// �ʒu
#define SIZE			(D3DXVECTOR3(30.0f,30.0f,0.0f))					// �T�C�Y
#define ROT				(D3DXVECTOR3(0.0f,0.0f,0.0f))					// ����
#define COLOR			(D3DXCOLOR(0.5f,1.0f,1.0f,1.0f))				// �F

// �ړ�
#define MOVE			(D3DXVECTOR3(cosf(D3DXToRadian(fAngle))*2.0f, sinf(D3DXToRadian(fAngle))*2.0f,0.0f))
//******************************************************************************
//	�R���X�g���N�^
//******************************************************************************
CDia_Particle::CDia_Particle(int nPrirority)
{
	m_move = INIT_D3DXVECTOR3;
	m_nLife = INIT_INT;
}
//******************************************************************************
//	�f�X�g���N�^
//******************************************************************************
CDia_Particle::~CDia_Particle()
{
}
//******************************************************************************
//	�����֐�
//******************************************************************************
CDia_Particle * CDia_Particle::Create(D3DXVECTOR3 pos, D3DXVECTOR3 size, D3DXCOLOR col, D3DXVECTOR3 move)
{
	// CDia_Particle�N���X�̃|�C���^
	CDia_Particle *pCDia_Particle;

	// �������m��
	pCDia_Particle = new CDia_Particle;

	// ���ݒ�
	pCDia_Particle->SetParticle(pos, size, ROT, col, CParticle::TEX_TYPE_3);

	// �ړ��ʑ��
	pCDia_Particle->m_move = move;

	// ������
	pCDia_Particle->Init();

	// �|�C���^��Ԃ�
	return pCDia_Particle;
}
//******************************************************************************
//	������
//******************************************************************************
HRESULT CDia_Particle::Init(void)
{
	// ������
	CParticle::Init();

	// ���C�t�ݒ�
	m_nLife = MAX_LIFE;

	return S_OK;
}
//******************************************************************************
//	�I���֐�
//******************************************************************************
void CDia_Particle::Uninit(void)
{
	// �I��
	CParticle::Uninit();
}
//******************************************************************************
//	�X�V�֐�
//******************************************************************************
void CDia_Particle::Update(void)
{
	// �X�V
	CParticle::Update();

	// �f�N�������g
	m_nLife--;

	// �ʒu���W�擾
	D3DXVECTOR3 pos = GetPosition();

	// �ʒu�X�V
	pos += m_move;

	// �ʒu���W�ݒ�
	SetPosition(pos);

	// ����0.0f�ȉ��̏ꍇ
	if (m_nLife <= MIN_LIFE)
	{
		// �I��
		Uninit();
		return;
	}
}
//******************************************************************************
//	�`��֐�
//******************************************************************************
void CDia_Particle::Draw(void)
{
	// �����_���[�擾
	LPDIRECT3DDEVICE9 pDevice = CManager::GetRenderer()->GetDevice();

	// ���Z�����̐ݒ�
	pDevice->SetRenderState(D3DRS_DESTBLEND, D3DBLEND_ONE);

	// �`��
	CParticle::Draw();

	// ���ɖ߂�
	pDevice->SetRenderState(D3DRS_DESTBLEND, D3DBLEND_INVSRCALPHA);


}
//******************************************************************************
//	�G�t�F�N�g����
//******************************************************************************
void CDia_Particle::DiaEffect_Create(D3DXVECTOR3 pos)
{
	for (int nCnt = INIT_INT; nCnt < MAX_PARTICLE; nCnt++)
	{
		// �p�x��360�����_��
		float fAngle = float(rand() % RANDOM_ANGLE);

		// ����
		Create(POS, SIZE, COLOR, MOVE);
	}
}