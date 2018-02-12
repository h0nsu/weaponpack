class KFWeap_SMG_AUG9mm extends KFWeap_SMGBase
	config(Game)
    hidecategories(Navigation,Advanced,Collision,Mobile,Movement,Object,Physics,Attachment,Debug);
	
static simulated event EFilterTypeUI GetTraderFilter()
{
	return FT_SMG;
}

defaultproperties
{
	   // Inventory / Grouping
	InventorySize=6
	GroupPriority=120
	WeaponSelectTexture=Texture2D'WEP_UI_AUG_TEX.UI_WeaponSelect_AUG'
   	AssociatedPerkClasses(0)=class'KFPerk_Swat'

	// Shooting Animations
	FireSightedAnims[0]=Shoot_Iron
	FireSightedAnims[1]=Shoot_Iron2
	FireSightedAnims[2]=Shoot_Iron3

    // FOV
	MeshIronSightFOV=52
    PlayerIronSightFOV=70

	// Depth of field
	DOF_FG_FocalRadius=85
	DOF_FG_MaxNearBlurSize=2.5

	Begin Object Name=FirstPersonMesh
	 	SkeletalMesh=SkeletalMesh'WEP_1P_NEW_AUG_MESH.Wep_1stP_AUG_Rig'
	 	AnimSets(0)=AnimSet'WEP_1P_L85A2_ANIM.Wep_1st_L85A2_Anim'
	End Object

	Begin Object Name=StaticPickupComponent
	 	StaticMesh=StaticMesh'WEP_3P_NEW_AUG_MESH.Wep_AUG_Pickup'
	End Object

	AttachmentArchetype=KFWeaponAttachment'WEP_NEW_AUG_ARCH.Wep_AUG_3P'

   	// Zooming/Position
	PlayerViewOffset=(X=3.0,Y=9,Z=-3)
	IronSightPosition=(X=-7,Y=-0.1,Z=1.3)
	//IronSightPosition=(X=0,Y=-0.3,Z=-0.4)

	// Ammo
	MagazineCapacity[0]=40
	SpareAmmoCapacity[0]=520
	InitialSpareMags[0]=4
	bCanBeReloaded=true
	bReloadFromMagazine=true

	// Recoil
	maxRecoilPitch=130
	minRecoilPitch=100
	maxRecoilYaw=90
	minRecoilYaw=-90
	RecoilRate=0.064
	RecoilMaxYawLimit=500
	RecoilMinYawLimit=65035
	RecoilMaxPitchLimit=820
	RecoilMinPitchLimit=65035
	RecoilISMaxYawLimit=110
	RecoilISMinYawLimit=65460
	RecoilISMaxPitchLimit=375
	RecoilISMinPitchLimit=65460
	RecoilViewRotationScale=0.25
	IronSightMeshFOVCompensationScale=1.4
    HippedRecoilModifier=1.1

	// DEFAULT_FIREMODE
	FireModeIconPaths(DEFAULT_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_BulletAuto'
	FiringStatesArray(DEFAULT_FIREMODE)=WeaponFiring
	WeaponFireTypes(DEFAULT_FIREMODE)=EWFT_InstantHit
	WeaponProjectiles(DEFAULT_FIREMODE)=class'KFProj_Bullet_AssaultRifle'
	InstantHitDamageTypes(DEFAULT_FIREMODE)=class'KFDT_Ballistic_AUG9mm'
	FireInterval(DEFAULT_FIREMODE)=+0.0909 // 830 RPM
	Spread(DEFAULT_FIREMODE)=0.0025
	InstantHitDamage(DEFAULT_FIREMODE)=45.0 //25
	FireOffset=(X=30,Y=4.5,Z=-5)

	// ALT_FIREMODE
	FireModeIconPaths(ALTFIRE_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_BulletSingle'
	FiringStatesArray(ALTFIRE_FIREMODE)=WeaponSingleFiring
	WeaponFireTypes(ALTFIRE_FIREMODE)=EWFT_InstantHit
	WeaponProjectiles(ALTFIRE_FIREMODE)=class'KFProj_Bullet_AssaultRifle'
	InstantHitDamageTypes(ALTFIRE_FIREMODE)=class'KFDT_Ballistic_AUG9mm'
	FireInterval(ALTFIRE_FIREMODE)=+0.0909
	InstantHitDamage(ALTFIRE_FIREMODE)=45.0 //25
	Spread(ALTFIRE_FIREMODE)=0.0015

	// BASH_FIREMODE
	InstantHitDamageTypes(BASH_FIREMODE)=class'KFDT_Bludgeon_AUG9mm'
	InstantHitDamage(BASH_FIREMODE)=30

	// Fire Effects
	MuzzleFlashTemplate=KFMuzzleFlash'WEP_L85A2_ARCH.Wep_L85A2_MuzzleFlash'
	WeaponFireSnd(DEFAULT_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_P90.Play_P90_Fire_3P_Loop', FirstPersonCue=AkEvent'WW_WEP_P90.Play_P90_Fire_1P_Loop')
	WeaponFireSnd(ALTFIRE_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_P90.Play_P90_Fire_3P_Single', FirstPersonCue=AkEvent'WW_WEP_P90.Play_P90_Fire_1P_Single')


	WeaponDryFireSnd(DEFAULT_FIREMODE)=AkEvent'WW_WEP_SA_L85A2.Play_WEP_SA_L85A2_Handling_DryFire'
	WeaponDryFireSnd(ALTFIRE_FIREMODE)=AkEvent'WW_WEP_SA_L85A2.Play_WEP_SA_L85A2_Handling_DryFire'

	// Advanced (High RPM) Fire Effects
	bLoopingFireAnim(DEFAULT_FIREMODE)=true
	bLoopingFireSnd(DEFAULT_FIREMODE)=true
	SingleFireSoundIndex=ALTFIRE_FIREMODE

	// Attachments
	bHasIronSights=true
	bHasFlashlight=false
}


