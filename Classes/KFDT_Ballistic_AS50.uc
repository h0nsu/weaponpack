//=============================================================================
// KFDT_Ballistic_M14EBR
//=============================================================================
// Ballistic damage with light impact energy, but stronger hit reactions
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
//=============================================================================

class KFDT_Ballistic_AS50 extends KFDT_Ballistic_Rifle
	abstract
	hidedropdown;

/** Allows the damage type to customize exactly which hit zones it can dismember */
static simulated function bool CanDismemberHitZone( name InHitZoneName )
{
	switch ( InHitZoneName )
	{
		case 'lupperarm':
		case 'rupperarm':
		case 'chest':
		case 'heart':
	 	case 'lhand':
		case 'rhand':
		case 'lfoot':
		case 'rfoot':
		case 'lforearm':
		case 'rforearm':
		case 'lcalf':
		case 'rcalf':
		case 'lthigh':
		case 'rthigh':
	 		return true;
	}

	return false;
}

defaultproperties
{

	KDamageImpulse=3250
	KDeathUpKick=-400
	KDeathVel=250

	BloodSpread=0.4
	BloodScale=0.6
	
    KnockdownPower=20
	StunPower=25 //40 //8
	StumblePower=0
	GunHitPower=100 //50
	MeleeHitPower=20

	HeadDestructionDamageScale=7.0
	HeadDestructionImpulseForceScale=7.0

	WeaponDef=class'KFWeapDef_AS50'
	ModifierPerkList(0)=class'KFPerk_Sharpshooter'
}
