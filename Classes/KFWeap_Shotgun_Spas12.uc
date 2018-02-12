//=============================================================================
// KFWeap_Shotgun_Spass12
//=============================================================================
// A Mossberg 500 Shotgun
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
//=============================================================================
class KFWeap_Shotgun_Spas12 extends KFWeap_ShotgunBase;

static simulated event EFilterTypeUI GetTraderFilter()
{
	return FT_Shotgun;
}

defaultproperties
{
	// Inventory
	InventorySize=6
	GroupPriority=80
	WeaponSelectTexture=Texture2D'Spass12.UI.UI_WeaponSelect_Spass12'

    // FOV
	MeshIronSightFOV=52
    PlayerIronSightFOV=70

	// Depth of field
	DOF_FG_FocalRadius=95
	DOF_FG_MaxNearBlurSize=3.5

	// Zooming/Position
	PlayerViewOffset=(X=8.0,Y=8.0,Z=-3.5)
	IronSightPosition=(X=9.5,Y=0,Z=0)

	Begin Object Name=FirstPersonMesh
		SkeletalMesh=SkeletalMesh'Spass12.Mesh.Wep_1stP_Spass12_Rig'
		AnimSets(0)=AnimSet'WEP_1P_MB500_ANIM.Wep_1st_MB500_Anim_New'
	End Object

	Begin Object Name=StaticPickupComponent
		StaticMesh=StaticMesh'Spass12.Mesh.Wep_Spass12_Pickup'
	End Object

	AttachmentArchetype=KFWeaponAttachment'Spass12.Arch.Wep_Spass12_3P'

	// DEFAULT_FIREMODE
	FireModeIconPaths(DEFAULT_FIREMODE)="ui_firemodes_tex.UI_FireModeSelect_ShotgunAuto"
	FiringStatesArray(DEFAULT_FIREMODE)=WeaponSingleFiring
	WeaponFireTypes(DEFAULT_FIREMODE)=EWFT_Projectile
	WeaponProjectiles(DEFAULT_FIREMODE)=class'KFProj_Bullet_Pellet'
	InstantHitDamage(DEFAULT_FIREMODE)=40.0
	InstantHitDamageTypes(DEFAULT_FIREMODE)=class'KFDT_Ballistic_Spas12'
	PenetrationPower(DEFAULT_FIREMODE)=2.7
	FireInterval(DEFAULT_FIREMODE)=0.4 
	Spread(DEFAULT_FIREMODE)=0.13
	FireOffset=(X=30,Y=3,Z=-3)
	// Shotgun
	NumPellets(DEFAULT_FIREMODE)=7

	// ALT_FIREMODE
	FireModeIconPaths(ALTFIRE_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_ShotgunSingle'
	FiringStatesArray(ALTFIRE_FIREMODE)=WeaponSingleFiring
	WeaponFireTypes(ALTFIRE_FIREMODE)=EWFT_Projectile
	WeaponProjectiles(ALTFIRE_FIREMODE)=class'KFProj_Bullet_Pellet'
	InstantHitDamage(ALTFIRE_FIREMODE)=35.0 
	InstantHitDamageTypes(ALTFIRE_FIREMODE)=class'KFDT_Ballistic_Spas12'
	PenetrationPower(ALTFIRE_FIREMODE)=2.7
	FireInterval(ALTFIRE_FIREMODE)=0.6 
	Spread(ALTFIRE_FIREMODE)=0.01
	// Shotgun
	NumPellets(ALTFIRE_FIREMODE)=3


	// BASH_FIREMODE
	InstantHitDamageTypes(BASH_FIREMODE)=class'KFDT_Bludgeon_Spas12'
	InstantHitDamage(BASH_FIREMODE)=25

	// Fire Effects
	MuzzleFlashTemplate=KFMuzzleFlash'WEP_MB500_ARCH.Wep_MB500_MuzzleFlash'

	WeaponFireSnd(DEFAULT_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_HZ12.Play_WEP_HZ12_Fire_3P', FirstPersonCue=AkEvent'WW_WEP_HZ12.Play_WEP_HZ12_Fire_1P')
    WeaponFireSnd(ALTFIRE_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_HZ12.Play_WEP_HZ12_Fire_3P', FirstPersonCue=AkEvent'WW_WEP_HZ12.Play_WEP_HZ12_Fire_1P')

    // using M4 dry fire sound. this is intentional.
	WeaponDryFireSnd(DEFAULT_FIREMODE)=AkEvent'WW_WEP_SA_M4.Play_WEP_SA_M4_Handling_DryFire'
	WeaponDryFireSnd(ALTFIRE_FIREMODE)=AkEvent'WW_WEP_SA_M4.Play_WEP_SA_M4_Handling_DryFire'

	// Attachments
	bHasIronSights=true
	bHasFlashlight=false

	// Ammo
	MagazineCapacity[0]=8
	SpareAmmoCapacity[0]=160
	InitialSpareMags[0]=5
	bCanBeReloaded=true
	bReloadFromMagazine=false

	// Recoil
	maxRecoilPitch=605	
	minRecoilPitch=450
	maxRecoilYaw=275
	minRecoilYaw=-275
	RecoilRate=0.075
	RecoilBlendOutRatio=0.25
	RecoilMaxYawLimit=500
	RecoilMinYawLimit=65035
	RecoilMaxPitchLimit=900
	RecoilMinPitchLimit=64785
	RecoilISMaxYawLimit=50
	RecoilISMinYawLimit=65485
	RecoilISMaxPitchLimit=500
	RecoilISMinPitchLimit=65485
	RecoilViewRotationScale=0.6
	FallingRecoilModifier=1.4
	HippedRecoilModifier=1.2 //1.5

	AssociatedPerkClasses(0)=class'KFPerk_Support'

	WeaponFireWaveForm=ForceFeedbackWaveform'FX_ForceFeedback_ARCH.Gunfire.Heavy_Recoil_SingleShot'
}