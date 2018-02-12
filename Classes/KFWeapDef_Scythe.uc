//=============================================================================
// KFWeapDef_Crovel
//=============================================================================
// A lightweight container for basic weapon properties that can be safely
// accessed without a weapon actor (UI, remote clients). 
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
//=============================================================================
class KFWeapDef_Scythe extends KFWeaponDefinition
	abstract;

DefaultProperties
{
	WeaponClassPath="WeaponPack.KFWeap_Edged_Scythe"
	
	BuyPrice=24000
	ImagePath="Texture2D'WEP_UI_Scythe_TEX.UI_Scythe_TEX'"

	EffectiveRange=120
}
