-- Real Damage Version 31.08.13
-- By Michael Smith

local Object = FindMetaTable( "Player" )

if ( SERVER ) then

	local Config = {
	
		Group = { },
		Damage = { }

	}

	local function AddHitGroup( HitGroup, Damage, Speed )

		Config.Damage[ HitGroup ] = {

			Damage = Damage,
			Speed = Speed

		}

	end

	local function AddPlayerGroup( Group )

		Config.Group[ tostring( Group ) ] = { }

	end

	local function AddPlayerModel( Group, Model )

		if ( not ( Config.Group[ tostring( Group ) ] ) ) then

			AddPlayerGroup( Group )

		end

		if ( not ( Config.Group[ tostring( Group ) ].Model ) ) then

			Config.Group[ tostring( Group ) ].Model = { }

		end

		table.insert( Config.Group[ tostring( Group ) ].Model, tostring( Model ) )

	end

	local function AddPlayerSound( Group, HitGroup, Sound )

		if ( not ( Config.Group[ tostring( Group ) ].Sound ) ) then

			Config.Group[ tostring( Group ) ].Sound = { }

		end

		if ( not ( Config.Group[ tostring( Group ) ].Sound[ HitGroup ] ) ) then

			Config.Group[ tostring( Group ) ].Sound[ HitGroup ] = { }

		end

		table.insert( Config.Group[ tostring( Group ) ].Sound[ HitGroup ], tostring( Sound ) )

	end

	-- To add a new hit group use AddHitGroup( HitGroupEnum, DamageMultiplier, SpeedMultiplier )

	-- Head: HITGROUP_HEAD, 1.65, 6
	AddHitGroup( HITGROUP_HEAD, 1.65, 6 )

	-- Chest: HITGROUP_CHEST, 0.85, 2
	AddHitGroup( HITGROUP_CHEST, 0.85, 2 )

	-- Stomach: HITGROUP_STOMACH, 0.55, 3
	AddHitGroup( HITGROUP_STOMACH, 0.55, 3 )

	-- Left arm: HITGROUP_LEFTARM, 0.30, 1
	AddHitGroup( HITGROUP_LEFTARM, 0.30, 1 )

	-- Right arm: HITGROUP_RIGHTARM, 0.30, 1
	AddHitGroup( HITGROUP_RIGHTARM, 0.30, 1 )

	-- Left leg: HITGROUP_LEFTLEG, 0.15, 30
	AddHitGroup( HITGROUP_LEFTLEG, 0.15, 30 )

	-- Right leg: HITGROUP_RIGHTLEG, 0.15, 30
	AddHitGroup( HITGROUP_RIGHTLEG, 0.15, 30 )

	-- To add a new group use AddPlayerGroup( Group ) 
	-- To add a new model use AddPlayerModel( Group, Model )
	-- To add a new sound use AddPlayerSound( Group, HitGroup, Sound )

	--[[ Sample Group

		AddPlayerGroup( "GroupName" )
		AddPlayerModel( "GroupName", "Model1" )
		AddPlayerModel( "GroupName", "Model2" )
		AddPlayerModel( "GroupName", "Model3" ) and so on.

		AddPlayerSound( "GroupName", HitGroup, "Sound" ) Use "Generic" as HitGroup and the sound will play if no HitGroup was triggered.

	--]]

	-- Male group.

		AddPlayerGroup( "Male" )
	AddPlayerModel( "Male", "models/player/barney.mdl" )
	AddPlayerModel( "Male", "models/player/breen.mdl" )
	AddPlayerModel( "Male", "models/player/arctic.mdl" )
	AddPlayerModel( "Male", "models/player/gasmask.mdl" )
	AddPlayerModel( "Male", "models/player/guerilla.mdl" )
	AddPlayerModel( "Male", "models/player/leet.mdl" )
	AddPlayerModel( "Male", "models/player/phoenix.mdl" )
	AddPlayerModel( "Male", "models/player/riot.mdl" )
	AddPlayerModel( "Male", "models/player/swat.mdl" )
	AddPlayerModel( "Male", "models/player/urban.mdl" )
	AddPlayerModel( "Male", "models/player/dod_american.mdl" )
	AddPlayerModel( "Male", "models/player/dod_german.mdl" )
	AddPlayerModel( "Male", "models/player/eli.mdl" )
	AddPlayerModel( "Male", "models/player/gman_high.mdl" )
	AddPlayerModel( "Male", "models/player/hostage/hostage_01.mdl" )
	AddPlayerModel( "Male", "models/player/hostage/hostage_02.mdl" )
	AddPlayerModel( "Male", "models/player/hostage/hostage_03.mdl" )
	AddPlayerModel( "Male", "models/player/hostage/hostage_04.mdl" )
	AddPlayerModel( "Male", "models/player/kleiner.mdl" )
	AddPlayerModel( "Male", "models/player/magnusson.mdl" )
	AddPlayerModel( "Male", "models/player/group01/male_01.mdl" )
	AddPlayerModel( "Male", "models/player/group01/male_02.mdl" )
	AddPlayerModel( "Male", "models/player/group01/male_03.mdl" )
	AddPlayerModel( "Male", "models/player/group01/male_04.mdl" )
	AddPlayerModel( "Male", "models/player/group01/male_05.mdl" )
	AddPlayerModel( "Male", "models/player/group01/male_06.mdl" )
	AddPlayerModel( "Male", "models/player/group01/male_07.mdl" )
	AddPlayerModel( "Male", "models/player/group01/male_08.mdl" )
	AddPlayerModel( "Male", "models/player/group01/male_09.mdl" )
	AddPlayerModel( "Male", "models/player/group03/male_01.mdl" )
	AddPlayerModel( "Male", "models/player/group03/male_02.mdl" )
	AddPlayerModel( "Male", "models/player/group03/male_03.mdl" )
	AddPlayerModel( "Male", "models/player/group03/male_04.mdl" )
	AddPlayerModel( "Male", "models/player/group03/male_05.mdl" )
	AddPlayerModel( "Male", "models/player/group03/male_06.mdl" )
	AddPlayerModel( "Male", "models/player/group03/male_07.mdl" )
	AddPlayerModel( "Male", "models/player/group03/male_08.mdl" )
	AddPlayerModel( "Male", "models/player/group03/male_09.mdl" )
	AddPlayerModel( "Male", "models/player/group03m/male_01.mdl" )
	AddPlayerModel( "Male", "models/player/group03m/male_02.mdl" )
	AddPlayerModel( "Male", "models/player/group03m/male_03.mdl" )
	AddPlayerModel( "Male", "models/player/group03m/male_04.mdl" )
	AddPlayerModel( "Male", "models/player/group03m/male_05.mdl" )
	AddPlayerModel( "Male", "models/player/group03m/male_06.mdl" )
	AddPlayerModel( "Male", "models/player/group03m/male_07.mdl" )
	AddPlayerModel( "Male", "models/player/group03m/male_08.mdl" )
	AddPlayerModel( "Male", "models/player/group03m/male_09.mdl" )
	AddPlayerModel( "Male", "models/player/monk.mdl" )
	AddPlayerModel( "Male", "models/player/group02/male_02.mdl" )
	AddPlayerModel( "Male", "models/player/group02/male_04.mdl" )
	AddPlayerModel( "Male", "models/player/group02/male_06.mdl" )
	AddPlayerModel( "Male", "models/player/group02/male_08.mdl" )

	-- Left arm sounds.
	AddPlayerSound( "Male", HITGROUP_LEFTARM, "vo/npc/male01/myarm01.wav" )
	AddPlayerSound( "Male", HITGROUP_LEFTARM, "vo/npc/male01/myarm02.wav" )

	-- Right arm sounds.
	AddPlayerSound( "Male", HITGROUP_RIGHTARM, "vo/npc/male01/myarm01.wav" )
	AddPlayerSound( "Male", HITGROUP_RIGHTARM, "vo/npc/male01/myarm02.wav" )

	-- Left leg sounds.
	AddPlayerSound( "Male", HITGROUP_LEFTLEG, "vo/npc/male01/myleg01.wav" )
	AddPlayerSound( "Male", HITGROUP_LEFTLEG, "vo/npc/male01/myleg02.wav" )

	-- Right leg sounds.
	AddPlayerSound( "Male", HITGROUP_RIGHTLEG, "vo/npc/male01/myleg01.wav" )
	AddPlayerSound( "Male", HITGROUP_RIGHTLEG, "vo/npc/male01/myleg02.wav" )

	-- Gut sounds.
	AddPlayerSound( "Male", HITGROUP_STOMACH, "vo/npc/male01/mygut02.wav" )

	-- Generic sounds.
	AddPlayerSound( "Male", "Generic", "vo/npc/male01/pain01.wav" )
	AddPlayerSound( "Male", "Generic", "vo/npc/male01/pain02.wav" )
	AddPlayerSound( "Male", "Generic", "vo/npc/male01/pain03.wav" )
	AddPlayerSound( "Male", "Generic", "vo/npc/male01/pain04.wav" )
	AddPlayerSound( "Male", "Generic", "vo/npc/male01/pain05.wav" )
	AddPlayerSound( "Male", "Generic", "vo/npc/male01/pain06.wav" )
	AddPlayerSound( "Male", "Generic", "vo/npc/male01/pain07.wav" )
	AddPlayerSound( "Male", "Generic", "vo/npc/male01/pain08.wav" )
	AddPlayerSound( "Male", "Generic", "vo/npc/male01/pain09.wav" )

	-- Female group.

		AddPlayerGroup( "Female" )
	AddPlayerModel( "Female", "models/player/alyx.mdl" )
	AddPlayerModel( "Female", "models/player/p2_chell.mdl" )
	AddPlayerModel( "Female", "models/player/group01/female_01.mdl" )
	AddPlayerModel( "Female", "models/player/group01/female_02.mdl" )
	AddPlayerModel( "Female", "models/player/group01/female_03.mdl" )
	AddPlayerModel( "Female", "models/player/group01/female_04.mdl" )
	AddPlayerModel( "Female", "models/player/group01/female_05.mdl" )
	AddPlayerModel( "Female", "models/player/group01/female_06.mdl" )
	AddPlayerModel( "Female", "models/player/group03/female_01.mdl" )
	AddPlayerModel( "Female", "models/player/group03/female_02.mdl" )
	AddPlayerModel( "Female", "models/player/group03/female_03.mdl" )
	AddPlayerModel( "Female", "models/player/group03/female_04.mdl" )
	AddPlayerModel( "Female", "models/player/group03/female_05.mdl" )
	AddPlayerModel( "Female", "models/player/group03/female_06.mdl" )
	AddPlayerModel( "Female", "models/player/group03m/female_01.mdl" )
	AddPlayerModel( "Female", "models/player/group03m/female_02.mdl" )
	AddPlayerModel( "Female", "models/player/group03m/female_03.mdl" )
	AddPlayerModel( "Female", "models/player/group03m/female_04.mdl" )
	AddPlayerModel( "Female", "models/player/group03m/female_05.mdl" )
	AddPlayerModel( "Female", "models/player/group03m/female_06.mdl" )
	AddPlayerModel( "Female", "models/player/mossman.mdl" )
	AddPlayerModel( "Female", "models/player/mossman_artic.mdl" )

	-- Left arm sounds.
	AddPlayerSound( "Female", HITGROUP_LEFTARM, "vo/npc/female01/myarm01.wav" )
	AddPlayerSound( "Female", HITGROUP_LEFTARM, "vo/npc/female01/myarm02.wav" )

	-- Right arm sounds.
	AddPlayerSound( "Female", HITGROUP_RIGHTARM, "vo/npc/female01/myarm01.wav" )
	AddPlayerSound( "Female", HITGROUP_RIGHTARM, "vo/npc/female01/myarm02.wav" )

	-- Left leg sounds.
	AddPlayerSound( "Female", HITGROUP_LEFTLEG, "vo/npc/female01/myleg01.wav" )
	AddPlayerSound( "Female", HITGROUP_LEFTLEG, "vo/npc/female01/myleg02.wav" )

	-- Right leg sounds.
	AddPlayerSound( "Female", HITGROUP_RIGHTLEG, "vo/npc/female01/myleg01.wav" )
	AddPlayerSound( "Female", HITGROUP_RIGHTLEG, "vo/npc/female01/myleg02.wav" )

	-- Gut sounds.
	AddPlayerSound( "Female", HITGROUP_STOMACH, "vo/npc/female01/mygut02.wav" )

	-- Generic sounds.
	AddPlayerSound( "Female", "Generic", "vo/npc/female01/pain01.wav" )
	AddPlayerSound( "Female", "Generic", "vo/npc/female01/pain02.wav" )
	AddPlayerSound( "Female", "Generic", "vo/npc/female01/pain03.wav" )
	AddPlayerSound( "Female", "Generic", "vo/npc/female01/pain04.wav" )
	AddPlayerSound( "Female", "Generic", "vo/npc/female01/pain05.wav" )
	AddPlayerSound( "Female", "Generic", "vo/npc/female01/pain06.wav" )
	AddPlayerSound( "Female", "Generic", "vo/npc/female01/pain07.wav" )
	AddPlayerSound( "Female", "Generic", "vo/npc/female01/pain08.wav" )
	AddPlayerSound( "Female", "Generic", "vo/npc/female01/pain09.wav" )

	-- Zombie group.

		AddPlayerGroup( "Zombie" )
	AddPlayerModel( "Zombie", "models/player/corpse1.mdl" )
	AddPlayerModel( "Zombie", "models/player/skeleton.mdl" )
	AddPlayerModel( "Zombie", "models/player/zombie_classic.mdl" )
	AddPlayerModel( "Zombie", "models/player/zombie_fast.mdl" )
	AddPlayerModel( "Zombie", "models/player/zombie_soldier.mdl" )

	-- Generic sounds.
	AddPlayerSound( "Zombie", "Generic", "npc/zombie/zombie_pain1.wav" )
	AddPlayerSound( "Zombie", "Generic", "npc/zombie/zombie_pain2.wav" )
	AddPlayerSound( "Zombie", "Generic", "npc/zombie/zombie_pain3.wav" )
	AddPlayerSound( "Zombie", "Generic", "npc/zombie/zombie_pain4.wav" )
	AddPlayerSound( "Zombie", "Generic", "npc/zombie/zombie_pain5.wav" )
	AddPlayerSound( "Zombie", "Generic", "npc/zombie/zombie_pain6.wav" )

	-- Overwatch group.

		AddPlayerGroup( "Overwatch" )
	AddPlayerModel( "Overwatch", "models/player/police.mdl" )
	AddPlayerModel( "Overwatch", "models/player/police_fem.mdl" )
	AddPlayerModel( "Overwatch", "models/player/combine_soldier.mdl" )
	AddPlayerModel( "Overwatch", "models/player/combine_soldier_prisonguard.mdl" )
	AddPlayerModel( "Overwatch", "models/player/combine_super_soldier.mdl" )

	-- Generic sounds.
	AddPlayerSound( "Overwatch", "Generic", "npc/metropolice/pain1.wav" )
	AddPlayerSound( "Overwatch", "Generic", "npc/metropolice/pain2.wav" )
	AddPlayerSound( "Overwatch", "Generic", "npc/metropolice/pain3.wav" )
	AddPlayerSound( "Overwatch", "Generic", "npc/metropolice/pain4.wav" )

	-- Alyx group.

		AddPlayerGroup( "Alyx" )
	AddPlayerModel( "Alyx", "models/player/alyx.mdl" )

	-- Generic sounds.
	AddPlayerSound( "Alyx", "Generic", "vo/npc/Alyx/hurt04.wav" )
	AddPlayerSound( "Alyx", "Generic", "vo/npc/Alyx/hurt05.wav" )
	AddPlayerSound( "Alyx", "Generic", "vo/npc/Alyx/hurt06.wav" )
	AddPlayerSound( "Alyx", "Generic", "vo/npc/Alyx/hurt08.wav" )

	-----------------------------------------
	--AVOID MODIFICATIONS BEYOND THIS POINT--
	-----------------------------------------

	function Object:GetGroup()

		for Group, Table in pairs( Config.Group ) do

			for j, Model in pairs( Table.Model ) do

				if ( self:GetModel() == Model ) then

					return Group

				end

			end

		end

		return "Unknown"

	end

	function Object:Speak( Sound )

		if ( not ( Sound ) ) then

			return

		end

		self:EmitSound( tostring( Sound ), math.random( 64, 68 ), math.random( 96, 104 ) )

	end

	function Object:GetPainSound( HitGroup )

		if ( not ( Config.Group[ self:GetGroup() ] ) ) then

			return

		end

		if ( not ( Config.Group[ self:GetGroup() ].Sound ) ) then

			return

		end

		local Sound = Config.Group[ self:GetGroup() ].Sound[ HitGroup ]

		if ( not ( Sound ) ) then

			if ( Config.Group[ self:GetGroup() ].Sound[ "Generic" ] ) then

				local Sound = Config.Group[ self:GetGroup() ].Sound[ "Generic" ]

				return Sound[ math.random( 1, #Sound ) ]

			end

			return

		end

		return Sound[ math.random( 1, #Sound ) ]

	end

	function Object:GetDamageMultiplier( HitGroup, DamageInfo )

		local Damage = DamageInfo:GetDamage()

		if ( Config.Damage[ HitGroup ] ) then

			if ( Config.Damage[ HitGroup ].Damage ) then

				return Config.Damage[ HitGroup ].Damage

			end

		end

		return 1

	end

	function Object:AdjustSpeed( Damage )

		self:SetRunSpeed( math.Clamp( self:GetRunSpeed() - Damage, self:GetWalkSpeed(), self:GetRunSpeed() ) )

	end

	-- Local functions

	local function GetFallDamage( Player, Speed )

		local Damage = Player:KeyDown( IN_DUCK ) and ( ( Speed / 10 ) / 1.60 ) or ( ( Speed / 10 ) / 1.20 )

		Player:AdjustSpeed( Damage )

		if ( CurTime() >= ( Player.LastPainSound or 0 ) + 1.50 ) then

			Player:Speak( Player:GetPainSound( ( math.random( 1, 2 ) == 1 and HITGROUP_LEFTLEG or HITGROUP_RIGHTLEG ) ) )

		end

		return Damage

	end
	hook.Add( "GetFallDamage", "Object.GetFallDamage", GetFallDamage )

	local function ScalePlayerDamage( Player, HitGroup, DamageInfo )

		local Damage = DamageInfo:GetDamage()

		DamageInfo:SetDamage( Damage * Player:GetDamageMultiplier( HitGroup, DamageInfo ) )

		if ( CurTime() >= ( Player.LastPainSound or 0 ) + 1.50 ) then

			Player:Speak( Player:GetPainSound( HitGroup ) )

			Player.LastPainSound = CurTime()

		end

		if ( Config.Damage[ HitGroup ] ) then

			if ( Config.Damage[ HitGroup ].Speed ) then

				Player:AdjustSpeed( Player:GetDamageMultiplier( HitGroup, DamageInfo ) * Config.Damage[ HitGroup ].Speed )

			end

		end

		local Tol = math.random( 2, 4 )

		Player:ViewPunch( Angle( math.random( -Tol, Tol ), math.random( -Tol, Tol ), math.random( -Tol, Tol ) ) )

		local Tol = math.Clamp( Damage, 0, 16 )

		timer.Simple( 0.14, function()

			Player:ViewPunch( Angle( math.random( -Tol, Tol ), math.random( -Tol, Tol ), math.random( -Tol, Tol ) ) )

		end )

		Player:SetEyeAngles( Player:EyeAngles() + Angle( math.random( -Tol / 10, Tol / 10 ), math.random( -Tol / 10, Tol / 10 ), 0 ) )

		if ( DamageInfo:IsBulletDamage() ) then

			Player:Speak( "weapons/crossbow/hitbod" .. math.random( 1, 2 ) .. ".wav" )

			if ( math.random( 1, 2 ) == 1 ) then

				Player:SetVelocity( Player:GetForward() * -132 )

			end

		end

	end
	hook.Add( "ScalePlayerDamage", "Object.ScalePlayerDamage", ScalePlayerDamage )

end

if ( CLIENT ) then

-- Too add HUD modifcations in future version, if I can be bothered that is.

end