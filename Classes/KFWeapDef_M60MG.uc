//=============================================================================
// KFWeapDef_Crovel
//=============================================================================
// A lightweight container for basic weapon properties that can be safely
// accessed without a weapon actor (UI, remote clients). 
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
//=============================================================================
class KFWeapDef_M60MG extends KFWeaponDefinition
	abstract;

defaultproperties
{
   WeaponClassPath="WeaponPack.KFWeap_M60MG"
   ImagePath="Texture2D'm60lmg.txr.UI_WeaponSelect_MAC10'"
   BuyPrice=5000
   AmmoPricePerMag=100
   EffectiveRange=120
}
