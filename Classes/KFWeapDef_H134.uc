//=============================================================================
// KFWeapDef_Hemogoblin
//=============================================================================
// A lightweight container for basic weapon properties that can be safely
// accessed without a weapon actor (UI, remote clients).
//=============================================================================
// Killing Floor 2
// Copyright (C) 2017 Tripwire Interactive LLC
//=============================================================================
class KFWeapDef_H134 extends KFWeaponDefinition
    abstract;

DefaultProperties
{
    WeaponClassPath="WeaponPack.KFWeap_Medic_H134"

    BuyPrice=5700 //1100
    AmmoPricePerMag=50 //40
    ImagePath="HMTech134.rig.UI_WeaponSelect_H134"

    EffectiveRange=100
}
