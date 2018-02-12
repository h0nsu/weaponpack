//=============================================================================
// KFWeaponDefintion
//=============================================================================
// A lightweight container for basic weapon properties that can be safely
// accessed without a weapon actor (UI, remote clients).
//=============================================================================
// Killing Floor 2
// Copyright (C) 2015 Tripwire Interactive LLC
//=============================================================================
class KFWeapDef_SVD extends KFWeaponDefinition
	abstract;
	
defaultproperties
{
   WeaponClassPath="WeaponPack.KFWeap_Rifle_SVD"
   ImagePath="Texture2D'Dragonuv.Skins.UIBarret'"
   BuyPrice=3000
   AmmoPricePerMag=30
   EffectiveRange=160
}
