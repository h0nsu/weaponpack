//=============================================================================
// KFWeapDef_Crovel
//=============================================================================
// A lightweight container for basic weapon properties that can be safely
// accessed without a weapon actor (UI, remote clients). 
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
//=============================================================================
class KFWeapDef_Skull9 extends KFWeaponDefinition
	abstract;

DefaultProperties
{
	WeaponClassPath="WeaponPack.KFWeap_Skull9"
	
	BuyPrice=35000
	ImagePath="Texture2D'Skull9.ui_skull9_select'"

	EffectiveRange=120
}
