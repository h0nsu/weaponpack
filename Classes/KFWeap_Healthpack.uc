class KFWeap_Healthpack extends KFWeap_ThrownBase;

simulated state WeaponPuttingDown
{
	ignores SetIronSights;
}

static simulated event EFilterTypeUI GetTraderFilter()
{
	return FT_Explosive;
}

simulated state WeaponEquipping
{
	simulated event BeginState( name PreviousStateName )
	{
		super.BeginState( PreviousStateName );

		// perform a "reload" if we refilled our ammo from empty while it was unequipped
		if( !HasAmmo(THROW_FIREMODE) && HasSpareAmmo() )
		{
			PerformArtificialReload();
		}
	}
}

simulated state WeaponThrowing
{
	/** Never refires.  Must re-enter this state instead. */
	simulated function bool ShouldRefire()
	{
		return false;
	}
}

static simulated event bool UsesAmmo()
{
    return true;
}

// do nothing, as we have no alt fire mode
simulated function AltFireMode();

simulated state Active
{
	/** Overridden to prevent playing fidget if play has no more ammo */
	simulated function bool CanPlayIdleFidget(optional bool bOnReload)
	{
		if( !HasAmmo(0) )
		{
			return false;
		}

		return super.CanPlayIdleFidget( bOnReload );
	}
}

simulated function Projectile ProjectileFire()
{
	local vector		StartTrace, X, Y, Z;
	local vector	POVLoc, TossVel;
	local rotator	POVRot;
	local HealthpackKFPickupFactory_Ammo MPF;
	
	if ( ShouldIncrementFlashCountOnFire() )
	{
		IncrementFlashCount();
	}
	
	if( Role == ROLE_Authority )
	{		
		Instigator.GetAxes(Instigator.Rotation, X, Y, Z);
		StartTrace = Instigator.Location + 2.8 * Instigator.CylinderComponent.CollisionRadius * X - 0.5 * Instigator.CylinderComponent.CollisionRadius * Y;
		StartTrace.Z += Instigator.BaseEyeHeight / 2;
		
		//`log("TRY SPAWN");
		
		MPF = Spawn(class'HealthpackKFPickupFactory_Ammo',,, StartTrace,,,true); //Spawn(class'MyKFPickupFactory_Ammo', RealStartLoc, AimDir);

		if(MPF!=None)
		{
			//`log("SPAWNED");
			Instigator.GetActorEyesViewPoint(POVLoc, POVRot);
			TossVel = Vector(POVRot);
			TossVel = TossVel * ((Instigator.Velocity Dot TossVel) + 500) + Vect(0,0,200);
			MPF.SetTimer( 0.5, false, nameof(MPF.Reset) );
			MPF.Velocity = TossVel;
			MPF.MyOwner=Instigator;
		}
	}

	return None;
}

defaultproperties
{ 	
	
	PlayerViewOffset=(X=6.0,Y=2,Z=-4)
	FireOffset=(X=25,Y=15)

	// Mesh
	Begin Object Name=FirstPersonMesh
		SkeletalMesh=SkeletalMesh'HealthPak_Model.WEP_Medkit_1P_Rig'
		AnimSets(0)=AnimSet'Wep_1P_C4_ANIM.Wep_1P_C4_ANIM'
	End Object


	// Anim
	FireAnim=C4_Throw
	FireLastAnim=C4_Throw_Last
	
	Begin Object Name=StaticPickupComponent
		//YOUR MESH HERE (PICKUP MESH)
		StaticMesh=StaticMesh'HealthPak_Model.healthpak_SM'
		Materials(0)=MaterialInstanceConstant'HealthPak_Model.GP_Healthpak_MIC'
		Scale=6.0f
	End Object
	
	AttachmentArchetype=KFWeapAttach_Dual_C4'HealthPak_Model.Wep_C4_3P'
	
	//timings from C4
	FiringStatesArray(THROW_FIREMODE)=WeaponThrowing
	FireInterval(THROW_FIREMODE)=0.25
	FireModeIconPaths(THROW_FIREMODE)=Texture2D'HealthPak_Model.UI_HP'
	WeaponProjectiles(THROW_FIREMODE)=class'WeaponPack.KFProj_HealthPack'
	
	InstantHitDamageTypes(BASH_FIREMODE)=class'KFDT_Bludgeon_C4'
	InstantHitDamage(BASH_FIREMODE)=30
	
	MagazineCapacity[0]=1
	SpareAmmoCapacity[0]=19
	InitialSpareMags[0]=5
	AmmoPickupScale[0]=1.0

	// Inventory
	WeaponSelectTexture=Texture2D'HealthPak_Model.UI_HP'
	InventorySize=1
	GroupPriority=21
	bCanThrow=true
	bDropOnDeath=true
	InventoryGroup=IG_Equipment
	
   	AssociatedPerkClasses(0)=class'KFPerk_FieldMedic'


}