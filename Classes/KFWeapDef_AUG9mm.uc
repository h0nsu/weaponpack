//=============================================================================
// KFWeaponDefintion
//=============================================================================
// A lightweight container for basic weapon properties that can be safely
// accessed without a weapon actor (UI, remote clients). 
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
//=============================================================================
class KFWeapDef_AUG9mm extends KFWeaponDefinition
	abstract;

DefaultProperties
{
	WeaponClassPath="WeaponPack.KFWeap_SMG_AUG9mm"

	BuyPrice=3500
	AmmoPricePerMag=60
	ImagePath="WEP_UI_AUG_TEX.UI_WeaponSelect_AUG"

	EffectiveRange=80
}
