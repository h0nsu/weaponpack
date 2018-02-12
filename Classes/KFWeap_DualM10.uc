//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC, Jeff Robinson
// Copyright (C) 2017 HickDead
//=============================================================================

class KFWeap_DualM10 extends KFWeap_DualBase;


simulated state WeaponFiring
{
	simulated function FireAmmunition()
	{
		bFireFromRightWeapon = !bFireFromRightWeapon;
		Super.FireAmmunition();
	}
}

defaultproperties
{
	Begin Object Name=StaticPickupComponent
		StaticMesh=StaticMesh'WEP_3P_M10_MESH.Wep_MAC10_Pickup'
	End Object

	Begin Object Name=FirstPersonMesh
		SkeletalMesh=SkeletalMesh'WEP_1P_Dual_M10_MESH.Wep_1stP_Dual_MAC10_Rig'
		AnimSets(0)=AnimSet'WEP_1P_Dual_M1911_ANIM.Wep_1stP_Dual_M1911_Anim'
	End Object

	AttachmentArchetype=KFWeapAttach_DualBase'WEP_Dual_M10_ARCH.Wep_Dual_MAC10_3P'

	FireOffset=(X=17,Y=4.0,Z=-2.25)
	LeftFireOffset=(X=17,Y=-4,Z=-2.25)

	// Zooming/Position
	IronSightPosition=(X=15,Y=0,Z=-2.5)
	PlayerViewOffset=(X=16,Y=0,Z=-5)
	QuickWeaponDownRotation=(Pitch=-8192,Yaw=0,Roll=0)

	// FOV
	MeshFOV=75
	MeshIronSightFOV=60
	PlayerIronSightFOV=77

	// Depth of field
	DOF_FG_FocalRadius=40
	DOF_FG_MaxNearBlurSize=3.5

	// Ammo
	MagazineCapacity[0]=60
	SpareAmmoCapacity[0]=540
	InitialSpareMags[0]=4
	AmmoPickupScale[0]=1.0
	bCanBeReloaded=true
	bReloadFromMagazine=true

	// Recoil
	maxRecoilPitch=70
	minRecoilPitch=65
	maxRecoilYaw=60
	minRecoilYaw=-60
	RecoilRate=0.04
	RecoilMaxYawLimit=400
	RecoilMinYawLimit=65135
	RecoilMaxPitchLimit=90
	RecoilMinPitchLimit=65035
	RecoilISMaxYawLimit=150
	RecoilISMinYawLimit=65385
	RecoilISMaxPitchLimit=350
	RecoilISMinPitchLimit=65435
	IronSightMeshFOVCompensationScale=1.2
	WalkingRecoilModifier=1.1
	JoggingRecoilModifier=1.2

	// DEFAULT_FIREMODE
	FiringStatesArray(DEFAULT_FIREMODE)=WeaponFiring
	WeaponFireTypes(DEFAULT_FIREMODE)=EWFT_InstantHit
	WeaponProjectiles(DEFAULT_FIREMODE)=class'KFProj_Bullet_M10'
	FireInterval(DEFAULT_FIREMODE)=+0.02	// twice as fast as single
	InstantHitDamage(DEFAULT_FIREMODE)=28.0
	InstantHitDamageTypes(DEFAULT_FIREMODE)=class'KFDT_Ballistic_M10'
	Spread(DEFAULT_FIREMODE)=0.045
	FireModeIconPaths(DEFAULT_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_BulletAuto'

	// ALTFIRE_FIREMODE
	FiringStatesArray(ALTFIRE_FIREMODE)=WeaponFiring
	WeaponFireTypes(ALTFIRE_FIREMODE)=EWFT_InstantHit
	WeaponProjectiles(ALTFIRE_FIREMODE)=class'KFProj_Bullet_M10'
	FireInterval(ALTFIRE_FIREMODE)=+0.02	// twice as fast as single
	InstantHitDamage(ALTFIRE_FIREMODE)=28.0
	InstantHitDamageTypes(ALTFIRE_FIREMODE)=class'KFDT_Ballistic_M10'
	Spread(ALTFIRE_FIREMODE)=0.045
	FireModeIconPaths(ALTFIRE_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_BulletAuto'

	// BASH_FIREMODE
	InstantHitDamage(BASH_FIREMODE)=25
	InstantHitDamageTypes(BASH_FIREMODE)=class'KFDT_Bludgeon_M10'

	// Fire Effects
	MuzzleFlashTemplate=KFMuzzleFlash'WEP_M10_ARCH.Wep_MAC10_MuzzleFlash'
	WeaponFireSnd(DEFAULT_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_MP5.Play_MP5_Fire_3P_Single', FirstPersonCue=AkEvent'WW_WEP_MP5.Play_MP5_Fire_1P_Single')
	WeaponDryFireSnd(DEFAULT_FIREMODE)=AkEvent'WW_WEP_SA_MedicSMG.Play_SA_MedicSMG_Handling_DryFire'

	WeaponFireSnd(ALTFIRE_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_MP5.Play_MP5_Fire_3P_Single', FirstPersonCue=AkEvent'WW_WEP_MP5.Play_MP5_Fire_1P_Single')
	WeaponDryFireSnd(ALTFIRE_FIREMODE)=AkEvent'WW_WEP_SA_MedicSMG.Play_SA_MedicSMG_Handling_DryFire'

	// Attachments
	bHasIronSights=true
	bHasFlashlight=true

	// Inventory
	InventorySize=6
	GroupPriority=92
	bCanThrow=true
	bDropOnDeath=true
	WeaponSelectTexture=Texture2D'WEP_UI_Dual_M10_TEX.UI_WeaponSelect_DualMAC10'
	bIsBackupWeapon=false
	AssociatedPerkClasses(0)=class'KFPerk_SWAT'

	SingleClass=class'KFWeap_SMG_M10'

	BonesToLockOnEmpty=(RW_Bolt, RW_Bullets1)
	BonesToLockOnEmpty_L=(LW_Bolt, LW_Bullets1)

	bHasFireLastAnims=true
}