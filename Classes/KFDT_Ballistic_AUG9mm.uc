//=============================================================================
// KFDT_Ballistic_P90
//=============================================================================
// Class Description
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
//  - Author 11/20/2013
//=============================================================================

class KFDT_Ballistic_AUG9mm extends KFDT_Ballistic_Submachinegun
	abstract
	hidedropdown;

defaultproperties
{

	KDamageImpulse=1200
	KDeathUpKick=-200
	KDeathVel=130

	StumblePower=20
	GunHitPower=15

	WeaponDef=class'KFWeapDef_AUG9mm'
	ModifierPerkList(0)=class'KFPerk_SWAT'
}
