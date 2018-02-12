//=============================================================================
// KFWeap_Rifle_M14EBR
//=============================================================================
// An M14 EBR
//=============================================================================
// Killing Floor 2
// Copyright (C) 2016 Tripwire Interactive LLC
// John "Ramm-Jaeger" Gibson
//=============================================================================

class KFWeap_Sniper_AS50 extends KFWeap_ScopedBase;

defaultproperties
{
	// Inventory / Grouping
	InventorySize=11
	GroupPriority=170
	WeaponSelectTexture=Texture2D'WEP_UI_AS50_TEX.UI_WeaponSelect_AS50'
   	AssociatedPerkClasses(0)=class'KFPerk_Sharpshooter'

 	// 2D scene capture
	Begin Object Name=SceneCapture2DComponent0
	   TextureTarget=TextureRenderTarget2D'Wep_Mat_Lib.WEP_ScopeLense_Target'
	   FieldOfView=10.5 // "2.0X" = 25.0(our real world FOV determinant)/2.0
	End Object

    ScopedSensitivityMod=6.0

	ScopeLenseMICTemplate=MaterialInstanceConstant'WEP_1P_AS50_MAT.WEP_1P_AS50_Scope_MAT'
	
    // FOV
    MeshFOV=70
	MeshIronSightFOV=22
    PlayerIronSightFOV=70

	// Depth of field
	DOF_BlendInSpeed=3.0	
	DOF_FG_FocalRadius=0//70
	DOF_FG_MaxNearBlurSize=3.5

	Begin Object Name=FirstPersonMesh
		SkeletalMesh=SkeletalMesh'WEP_1P_AS50_MESH.WEP_1stP_AS50'
		AnimSets(0)=AnimSet'WEP_1P_M14EBR_ANIM.Wep_1stP_M14_EBR_Anim'
	End Object

	Begin Object Name=StaticPickupComponent
		StaticMesh=StaticMesh'WEP_3P_AS50_MESH.Wep_AS50_Pickup'
	End Object

	AttachmentArchetype=KFWeaponAttachment'WEP_AS50_ARCH.Wep_AS50_3P'

	// Ammo
	MagazineCapacity[0]=7
	SpareAmmoCapacity[0]=56
	InitialSpareMags[0]=2
	bCanBeReloaded=true
	bReloadFromMagazine=true

	// Zooming/Position
	PlayerViewOffset=(X=15.0,Y=11.5,Z=-4)
	IronSightPosition=(X=0.0,Y=0,Z=0)

	// AI warning system
	bWarnAIWhenAiming=true
	AimWarningDelay=(X=0.4f, Y=0.8f)
	AimWarningCooldown=0.0f

	// Recoil
	maxRecoilPitch=1400
	minRecoilPitch=700
	maxRecoilYaw=750
	minRecoilYaw=-100
	RecoilRate=0.09
	RecoilMaxYawLimit=900
	RecoilMinYawLimit=65035
	RecoilMaxPitchLimit=1600
	RecoilMinPitchLimit=65035
	RecoilISMaxYawLimit=150
	RecoilISMinYawLimit=65385
	RecoilISMaxPitchLimit=375
	RecoilISMinPitchLimit=65460
	RecoilViewRotationScale=0.6

	// DEFAULT_FIREMODE
	FireModeIconPaths(DEFAULT_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_BulletSingle'
	FiringStatesArray(DEFAULT_FIREMODE)=WeaponSingleFiring
	WeaponFireTypes(DEFAULT_FIREMODE)=EWFT_InstantHit
	WeaponProjectiles(DEFAULT_FIREMODE)=class'KFProj_Bullet_AS50'
	InstantHitDamage(DEFAULT_FIREMODE)=950.0 //75
	InstantHitDamageTypes(DEFAULT_FIREMODE)=class'KFDT_Ballistic_AS50'
	FireInterval(DEFAULT_FIREMODE)=0.4 //0.2
	PenetrationPower(DEFAULT_FIREMODE)=4.0
	Spread(DEFAULT_FIREMODE)=0.006
	FireOffset=(X=30,Y=3.0,Z=-2.5)

	// ALT_FIREMODE
	FiringStatesArray(ALTFIRE_FIREMODE)=WeaponSingleFiring
	WeaponFireTypes(ALTFIRE_FIREMODE)=EWFT_None


	// BASH_FIREMODE
	InstantHitDamageTypes(BASH_FIREMODE)=class'KFDT_Bludgeon_M14EBR'
	InstantHitDamage(BASH_FIREMODE)=50

	// Fire Effects
	MuzzleFlashTemplate=KFMuzzleFlash'WEP_M14EBR_ARCH.Wep_M14EBR_MuzzleFlash'
	WeaponFireSnd(DEFAULT_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_SA_Shotgun.Play_SA_WEP_DoubleBarrel_Fire_3P', FirstPersonCue=AkEvent'WW_WEP_SA_Shotgun.Play_SA_WEP_DoubleBarrel_Fire_1P')
	WeaponDryFireSnd(DEFAULT_FIREMODE)=AkEvent'WW_WEP_SA_EBR.Play_WEP_SA_EBR_Handling_DryFire'

	// Custom animations
	FireSightedAnims=(Shoot_Iron, Shoot_Iron2, Shoot_Iron3)

	// Attachments
	bHasIronSights=true
	bHasFlashlight=false
	bHasLaserSight=false

	WeaponFireWaveForm=ForceFeedbackWaveform'FX_ForceFeedback_ARCH.Gunfire.Heavy_Recoil'
}