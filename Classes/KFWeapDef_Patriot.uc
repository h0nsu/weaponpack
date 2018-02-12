//=============================================================================
// KFWeapDef_Crovel
//=============================================================================
// A lightweight container for basic weapon properties that can be safely
// accessed without a weapon actor (UI, remote clients).
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
//=============================================================================
class KFWeapDef_Patriot extends KFWeaponDefinition
	abstract;

DefaultProperties
{
	WeaponClassPath="WeaponPack.KFWeap_Revolver_Patriot"

	BuyPrice=3400
	AmmoPricePerMag=100
	ImagePath="Patriot.Skins.UI_Patriot_Select"

	EffectiveRange=130
}
