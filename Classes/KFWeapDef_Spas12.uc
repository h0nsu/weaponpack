//=============================================================================
// KFWeapDef_Crovel
//=============================================================================
// A lightweight container for basic weapon properties that can be safely
// accessed without a weapon actor (UI, remote clients). 
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
//=============================================================================
class KFWeapDef_Spas12 extends KFWeaponDefinition
	abstract;

DefaultProperties
{
	WeaponClassPath="WeaponPack.KFWeap_Shotgun_Spas12"

	BuyPrice=4500
	AmmoPricePerMag=40 //32
	ImagePath="Spass12.UI.UI_WeaponSelect_Spass12"

	EffectiveRange=30
	
}
