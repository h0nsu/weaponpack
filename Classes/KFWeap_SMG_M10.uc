//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC, Jeff Robinson
// Copyright (C) 2017 HickDead
//=============================================================================

class KFWeap_SMG_M10 extends KFWeap_SMGBase;

defaultproperties
{
	Begin Object Name=StaticPickupComponent
		StaticMesh=StaticMesh'WEP_3P_M10_MESH.Wep_MAC10_Pickup'
	End Object

	Begin Object Name=FirstPersonMesh
		SkeletalMesh=SkeletalMesh'WEP_1P_M10_MESH.Wep_1stP_MAC10_Rig'
		AnimSets(0)=AnimSet'WEP_1P_M1911_ANIM.Wep_1stP_M1911_Anim'
	End Object

	AttachmentArchetype=KFWeaponAttachment'WEP_M10_arch.Wep_Mac10_3P'

	// FOV
	MeshFOV=75
	MeshIronSightFOV=60
	PlayerIronSightFOV=77

	// Depth of field
	DOF_FG_FocalRadius=40
	DOF_FG_MaxNearBlurSize=3.5

	// Zooming/Position
	PlayerViewOffset=(X=22.0,Y=12,Z=-6)
	IronSightPosition=(X=15,Y=0,Z=-3.5)

	// Ammo
	MagazineCapacity[0]=30
	SpareAmmoCapacity[0]=270
	InitialSpareMags[0]=3
	AmmoPickupScale[0]=2.0
	bCanBeReloaded=true
	bReloadFromMagazine=true

	// Recoil
	maxRecoilPitch=70
	minRecoilPitch=65
	maxRecoilYaw=60
	minRecoilYaw=-60
	RecoilRate=0.05
	RecoilMaxYawLimit=400
	RecoilMinYawLimit=65135
	RecoilMaxPitchLimit=800
	RecoilMinPitchLimit=65035
	RecoilISMaxYawLimit=150
	RecoilISMinYawLimit=65385
	RecoilISMaxPitchLimit=350
	RecoilISMinPitchLimit=65435
	IronSightMeshFOVCompensationScale=1.5
	WalkingRecoilModifier=1.1
	JoggingRecoilModifier=1.2

	// DEFAULT_FIREMODE
	FiringStatesArray(DEFAULT_FIREMODE)=WeaponFiring
	WeaponFireTypes(DEFAULT_FIREMODE)=EWFT_InstantHit
	WeaponProjectiles(DEFAULT_FIREMODE)=class'KFProj_Bullet_M10'
	FireInterval(DEFAULT_FIREMODE)=+0.04
	InstantHitDamage(DEFAULT_FIREMODE)=28.0
	InstantHitDamageTypes(DEFAULT_FIREMODE)=class'KFDT_Ballistic_M10'
	Spread(DEFAULT_FIREMODE)=0.02
	FireOffset=(X=20,Y=4.0,Z=-3)

	FireModeIconPaths(DEFAULT_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_BulletAuto'

	// ALT_FIREMODE
	// ALTFIRE_FIREMODE
	FiringStatesArray(ALTFIRE_FIREMODE)=WeaponFiring
	WeaponFireTypes(ALTFIRE_FIREMODE)=EWFT_None

	// BASH_FIREMODE
	InstantHitDamageTypes(BASH_FIREMODE)=class'KFDT_Bludgeon_M10'
	InstantHitDamage(BASH_FIREMODE)=25

	// Fire Effects
	MuzzleFlashTemplate=KFMuzzleFlash'WEP_M10_ARCH.Wep_MAC10_MuzzleFlash'
	WeaponFireSnd(DEFAULT_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_MP5.Play_MP5_Fire_3P_Single', FirstPersonCue=AkEvent'WW_WEP_MP5.Play_MP5_Fire_1P_Single')
	WeaponDryFireSnd(DEFAULT_FIREMODE)=AkEvent'WW_WEP_SA_9mm.Play_WEP_SA_9mm_Handling_DryFire'

	// Attachments
	bHasIronSights=true
	bHasFlashlight=true

	// Inventory
	InventorySize=3
	GroupPriority=90
	bCanThrow=true
	bDropOnDeath=true
	WeaponSelectTexture=Texture2D'WEP_UI_M10_TEX.UI_WeaponSelect_MAC10'
	bIsBackupWeapon=false
	AssociatedPerkClasses(0)=class'KFPerk_SWAT'

	DualClass=class'KFWeap_DualM10'

	// Custom animations
	FireSightedAnims=(Shoot_Iron, Shoot_Iron2, Shoot_Iron3)
	IdleFidgetAnims=(Guncheck_v1, Guncheck_v2, Guncheck_v3, Guncheck_v4, Guncheck_v5,Guncheck_v6)

	BonesToLockOnEmpty=(RW_Bolt, RW_Bullets1)

	bHasFireLastAnims=true
}