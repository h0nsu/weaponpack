//=============================================================================
// KFWeapDef_Crovel
//=============================================================================
// A lightweight container for basic weapon properties that can be safely
// accessed without a weapon actor (UI, remote clients).
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
//=============================================================================
class KFWeapDef_AS50 extends KFWeaponDefinition
	abstract;

DefaultProperties
{
	WeaponClassPath="WeaponPack.KFWeap_Sniper_AS50"

	BuyPrice=20000
	AmmoPricePerMag=200 //40
	ImagePath="WEP_UI_AS50_TEX.UI_WeaponSelect_AS50"

	EffectiveRange=150
}
