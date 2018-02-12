//=============================================================================
// KFDT_Ballistic_Glock
//=============================================================================
// Glock damage type
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC, John "Ramm-Jaeger" Gibson
// Copyright (C) 2017 HickDead
//=============================================================================

class KFDT_Ballistic_M10 extends KFDT_Ballistic_Submachinegun
	abstract
	hidedropdown;

defaultproperties
{
	KDamageImpulse=1000
	KDeathUpKick=-300
	KDeathVel=130

	KnockdownPower=2
	StumblePower=10
	GunHitPower=10

	WeaponDef=class'KFWeapDef_M10'
	ModifierPerkList(0)=class'KFPerk_SWAT'
}
