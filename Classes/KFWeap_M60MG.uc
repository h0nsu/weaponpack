//=============================================================================
// KFWeap_AssaultRifle_SCAR
//=============================================================================
// Class Description
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
//=============================================================================

class KFWeap_M60MG extends KFWeap_RifleBase
    config(Game)
    hidecategories(Navigation,Advanced,Collision,Mobile,Movement,Object,Physics,Attachment,Debug);
	
static simulated event EFilterTypeUI GetTraderFilter()
{
	return FT_Assault;
}

defaultproperties
{
   // Attachments
   bHasIronSights=true
   bHasFlashlight=false
   
   // Ammo
   MagazineCapacity[0]=100
   SpareAmmoCapacity[0]=600
   InitialSpareMags[0]=3
   bCanBeReloaded=true
   bReloadFromMagazine=true

   // FOV
   MeshFOV=75.000000
   MeshIronSightFOV=20
   PlayerIronSightFOV=70.000000

   // Zooming/Position
   IronSightPosition=(X=30.00000,Y=2.49,Z=-0.58)
   PlayerViewOffset=(X=6.0,Y=8,Z=-3)

   // Depth of Field
   DOF_FG_FocalRadius=85.000000
   DOF_FG_MaxNearBlurSize=2.500000

   Begin Object Name=FirstPersonMesh 
      SkeletalMesh=SkeletalMesh'm60lmg.rig2.Wep_1stP_SCAR_Rig'
      AnimSets(0)=AnimSet'WEP_1P_SCAR_ANIM.Wep_1stP_SCAR_Anim'
   End Object

   Begin Object Name=StaticPickupComponent
            StaticMesh=StaticMesh'm60lmg.rig.Wep_MAC10_Pickup'
            ReplacementPrimitive=None
            CastShadow=False
            Scale=1.500000
   End Object

   AttachmentArchetype=KFWeaponAttachment'm60lmg.arch.Wep_M60_3P2'
   
   // Fire Effects
   MuzzleFlashTemplate=KFMuzzleFlash'WEP_SCAR_ARCH.Wep_Scar_MuzzleFlash'
   WeaponFireSnd(DEFAULT_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_Stoner.Play_WEP_Stoner_Fire_3P_Loop', FirstPersonCue=AkEvent'WW_WEP_Stoner.Play_WEP_Stoner_Fire_1P_Loop')
   WeaponFireSnd(ALTFIRE_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_Stoner.Play_WEP_Stoner_Fire_3P_Single', FirstPersonCue=AkEvent'WW_WEP_Stoner.Play_WEP_Stoner_Fire_1P_Single')
   WeaponFireLoopEndSnd(DEFAULT_FIREMODE)=(DefaultCue=AkEvent'WW_WEP_Stoner.Play_WEP_Stoner_Fire_3P_EndLoop', FirstPersonCue=AkEvent'WW_WEP_Stoner.Play_WEP_Stoner_Fire_1P_EndLoop')
   WeaponDryFireSnd(DEFAULT_FIREMODE)=AkEvent'WW_WEP_SA_L85A2.Play_WEP_SA_L85A2_Handling_DryFire'
   WeaponDryFireSnd(ALTFIRE_FIREMODE)=AkEvent'WW_WEP_SA_L85A2.Play_WEP_SA_L85A2_Handling_DryFire'
   EjectedShellForegroundDuration=0.8f
   
   Begin Object Class=KFMeleeHelperWeapon Name=MeleeHelper_0 Archetype=KFMeleeHelperWeapon'KFGame.Default__KFWeap_RifleBase:MeleeHelper_0'
      MaxHitRange=175.000000
      Name="MeleeHelper_0"
     End Object
  
   // Recoil
   maxRecoilPitch=120
   minRecoilPitch=70
   maxRecoilYaw=170
   minRecoilYaw=-130
   RecoilRate=0.070000
   RecoilViewRotationScale=0.580000
   RecoilMaxYawLimit=500
   RecoilMinYawLimit=65035
   RecoilMaxPitchLimit=900
   RecoilMinPitchLimit=65035
   RecoilISMaxYawLimit=95
   RecoilISMinYawLimit=65460
   RecoilISMaxPitchLimit=375
   RecoilISMinPitchLimit=65460
   HippedRecoilModifier=1.600000
   IronSightMeshFOVCompensationScale=2.200000

   // Inventory / Grouping
   InventorySize=10
   GroupPriority=170
   AssociatedPerkClasses(0)=Class'KFGame.KFPerk_Commando'
   WeaponSelectTexture=Texture2D'm60lmg.txr.UI_WeaponSelect_MAC10'
   
   // DEFAULT_FIREMODE
   FireModeIconPaths(DEFAULT_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_BulletAuto'
   FiringStatesArray(DEFAULT_FIREMODE)=WeaponFiring
   WeaponFireTypes(DEFAULT_FIREMODE)=EWFT_InstantHit
   WeaponProjectiles(DEFAULT_FIREMODE)=class'kfgamecontent.KFProj_Bullet_AssaultRifle'
   InstantHitDamageTypes(DEFAULT_FIREMODE)=class'WeaponPack.KFDT_Ballistic_M60'
   FireInterval(DEFAULT_FIREMODE)=+0.066000 // 900 RPM
   Spread(DEFAULT_FIREMODE)=0.007000
   InstantHitDamage(DEFAULT_FIREMODE)=60.0 //25
   FireOffset=(X=30,Y=4.5,Z=-5)

   // BASH_FIREMODE
   InstantHitDamageTypes(BASH_FIREMODE)=class'WeaponPack.KFDT_Bludgeon_M60'
   InstantHitDamage(BASH_FIREMODE)=60

   // ALT_FIREMODE
   FireModeIconPaths(ALTFIRE_FIREMODE)=Texture2D'ui_firemodes_tex.UI_FireModeSelect_BulletAuto'
   FiringStatesArray(ALTFIRE_FIREMODE)=WeaponFiring
   WeaponFireTypes(ALTFIRE_FIREMODE)=EWFT_None

   // Advanced (High RPM) Fire Effects
   bLoopingFireAnim(DEFAULT_FIREMODE)=true
   bLoopingFireSnd(DEFAULT_FIREMODE)=true
   SingleFireSoundIndex=ALTFIRE_FIREMODE

}
