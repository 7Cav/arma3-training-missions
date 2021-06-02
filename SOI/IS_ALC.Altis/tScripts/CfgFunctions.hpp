
class init {
	tag = "init";
	class functions
	{
		file = "tScripts\Utility";
		class hudPreInit { preInit = 1; };
	};
};

class tScripts {

	class tools {
		file = "tScripts\Tools";
		class pauseEx {};
		class resourcesCadre {};
		class timeSkip {};
		class tools {};
		class 3DIcons {};
		class wallHacks {};
	};

	class utility {
		file = "tScripts\Utility";
		class acePermissions {};
		class crateLock {};
		class intro {};
		class resourcesCadet {};
		class tapes {};
	};

	class crates {
		file = "tScripts\Crates";
		class classCrate {};
	};

	class cargo {
		file = "tScripts\Crates\Cargo";
		class loadAmmoBox {};
		class setCargo {};
	};

	class loadout {
		file = "tScripts\Crates\Kits";
		class kitInstructor {};
		class kitANPRC343 {};
		class kitANPRC152 {};
		class kitANPRC117F {};
		class kitVHFGSM {};
		class kitNavigation {};
		class kitSquadLeader {};
		class kitTeamLeader {};
		class kitAutomaticRifleman {};
		class kitGrenadier {};
		class kitRifleman {};
		class kitCombatLifeSaver {};
		class kitPlatoonMedic {};
		class kitMedic {};
		class kitMedicTeamLeader {};
	};

	class vehicle {
		file = "tScripts\Vehicles";
		class vehicleInit {};
		class spaceSize {};
		class liftVehicle {};
	};

	class landVehicle {
		file = "tScripts\Vehicles\LandVehicle";
		class humvee {};
		class stryker {};
		class bradley {};
		class abrams {};
	};

	class airVehicle {
		file = "tScripts\Vehicles\AirVehicle";
		class littleBird {};
		class blackhawk {};
		class chinook {};
		class apache {};
		class C130 {};
	};

	class staticVehicle {
		file = "tScripts\Vehicles\StaticVehicle";
		class m2 {};
		class mk19 {};
		class tow {};
		class m224 {};
	};

};