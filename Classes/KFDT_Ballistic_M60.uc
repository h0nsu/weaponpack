//=============================================================================
// KFDT_Ballistic_SCAR
//=============================================================================
// Class Description
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
//  - Author 10/30/2013
//=============================================================================

class KFDT_Ballistic_M60 extends KFDT_Ballistic_AssaultRifle
	abstract
	hidedropdown;

/** Allows the damage type to customize exactly which hit zones it can dismember */
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
	 		return true;
	}

	return false;
}

defaultproperties
{
   WeaponDef=Class'WeaponPack.KFWeapDef_M60MG'
   StumblePower=45.000000
   GunHitPower=0.000000
   ModifierPerkList(0)=Class'KFGame.KFPerk_Commando'
   GibImpulseScale=1.250000
   KDamageImpulse=1100.000000
   KDeathVel=500.000000
   KDeathUpKick=-300.000000
}
