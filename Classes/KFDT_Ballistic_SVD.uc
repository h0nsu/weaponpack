//=============================================================================
// KFDT_Ballistic_AR15
//=============================================================================
// Class Description
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
//  - Author 10/30/2013
//=============================================================================

class KFDT_Ballistic_SVD extends KFDT_Ballistic_Rifle
	abstract
	hidedropdown;

static simulated function bool CanDismemberHitZone( name InHitZoneName )
{
	if( super.CanDismemberHitZone( InHitZoneName ) )
	{
		return true;
	}

    switch ( InHitZoneName )
	{
		case 'lupperarm':
		case 'rupperarm':
		case 'chest':
		case 'heart':
	 		return true;
	}

	return false;
}

defaultproperties
{

	KDamageImpulse=3250
	KDeathUpKick=-400
	KDeathVel=350

    KnockdownPower=20
	StunPower=40 //40 //8
	StumblePower=20
	GunHitPower=100 //50
	MeleeHitPower=0
	WeaponDef=class'WeaponPack.KFWeapDef_SVD'
	ModifierPerkList(0)=class'KFPerk_Sharpshooter'
}
