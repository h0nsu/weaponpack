//=============================================================================
// KFWeap_Rifle_SVD
//=============================================================================
// An M14 EBR
//=============================================================================
// Killing Floor 2
// Copyright (C) 2016 Tripwire Interactive LLC
// John "Ramm-Jaeger" Gibson
//=============================================================================

class KFWeap_Rifle_SVD extends KFWeap_ScopedBase;

static simulated event EFilterTypeUI GetTraderFilter()
{
	return FT_Rifle;
}
defaultproperties
{
	// Inventory / Grouping
	InventorySize=8
	GroupPriority=90
	WeaponSelectTexture=Texture2D'Dragonuv.Skins.UIBarret'
	AssociatedPerkClasses(0)=class'KFPerk_Sharpshooter'

 	// 2D scene capture
	Begin Object Name=SceneCapture2DComponent0
	   TextureTarget=TextureRenderTarget2D'Wep_Mat_Lib.WEP_ScopeLense_Target'
	   FieldOfView=12.5 // 4x zoom
	End Object

	SceneCapture=SceneCapture2DComponent0
    ScopedSensitivityMod=5.0
	ScopeLenseMICTemplate=MaterialInstanceConstant'Dragonuv.PSOReticleillum'

	MeshFOV=70.0
    MeshIronSightFOV=20.0
    PlayerIronSightFOV=70.0
    IronSightPosition=(X=0.0,Y=0.760,Z=3.330)

    DOF_BlendInSpeed=3.0
    DOF_FG_FocalRadius=0.0
    DOF_FG_MaxNearBlurSize=3.50
    AimWarningDelay=(X=0.40,Y=0.80)
	
	Begin Object Name=FirstPersonMesh
		SkeletalMesh=SkeletalMesh'Dragonuv.rig.1P_Barret_v2'
		AnimSets(0)=AnimSet'WEP_1P_M14EBR_ANIM.Wep_1stP_M14_EBR_Anim'
	End Object
	
	Begin Object Name=StaticPickupComponent 
        StaticMesh=StaticMesh'Dragonuv.rig.barret'
    End Object

	// Ammo
	MagazineCapacity[0]=10
	SpareAmmoCapacity[0]=100
	InitialSpareMags[0]=3
	bCanBeReloaded=true
	bReloadFromMagazine=true

	// Zooming/Position
	PlayerViewOffset=(X=15.0,Y=11.5,Z=-4)

	// Recoil
	maxRecoilPitch=450
	minRecoilPitch=300
	maxRecoilYaw=300
	minRecoilYaw=-200
	RecoilRate=0.07
	RecoilMaxYawLimit=500
	RecoilMinYawLimit=65035
	RecoilMaxPitchLimit=900
	RecoilMinPitchLimit=65035
	RecoilISMaxYawLimit=190
	RecoilISMinYawLimit=65385
	RecoilISMaxPitchLimit=375
	RecoilISMinPitchLimit=65460
	RecoilViewRotationScale=0.6

	// DEFAULT_FIREMODE
	FireModeIconPaths(DEFAULT_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_BulletSingle'
	FiringStatesArray(DEFAULT_FIREMODE)=WeaponSingleFiring
	WeaponFireTypes(DEFAULT_FIREMODE)=EWFT_InstantHit
	WeaponProjectiles(DEFAULT_FIREMODE)=class'KFProj_Bullet_M14EBR'
	InstantHitDamage(DEFAULT_FIREMODE)=375.0 //75
	InstantHitDamageTypes(DEFAULT_FIREMODE)=class'KFDT_Ballistic_SVD'
	FireInterval(DEFAULT_FIREMODE)=0.394 //0.2
	PenetrationPower(DEFAULT_FIREMODE)=6.0
	Spread(DEFAULT_FIREMODE)=0.016
	FireOffset=(X=30,Y=3.0,Z=-2.5)

	// ALT_FIREMODE
	FiringStatesArray(ALTFIRE_FIREMODE)=WeaponSingleFiring
	WeaponFireTypes(ALTFIRE_FIREMODE)=EWFT_None

	// BASH_FIREMODE
	InstantHitDamageTypes(BASH_FIREMODE)=class'KFDT_Bludgeon_SVD'
	InstantHitDamage(BASH_FIREMODE)=40

	// Fire Effects
	MuzzleFlashTemplate=KFMuzzleFlash'WEP_M14EBR_ARCH.Wep_M14EBR_MuzzleFlash'
	WeaponFireSnd(DEFAULT_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_SA_EBR.Play_WEP_SA_EBR_Fire_Single_M', FirstPersonCue=AkEvent'WW_WEP_SA_EBR.Play_WEP_SA_EBR_Fire_Single_S')
	WeaponDryFireSnd(DEFAULT_FIREMODE)=AkEvent'WW_WEP_SA_EBR.Play_WEP_SA_EBR_Handling_DryFire'

	// Custom animations
	FireSightedAnims=(Shoot_Iron, Shoot_Iron2, Shoot_Iron3)

	// Attachments
	bHasIronSights=true
	bHasFlashlight=false

	WeaponFireWaveForm=ForceFeedbackWaveform'FX_ForceFeedback_ARCH.Gunfire.Heavy_Recoil'
}


