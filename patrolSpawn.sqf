if(isServer) then {
	
	_enemyTypes = ["CUP_O_INS_Soldier_AA", "CUP_O_INS_Soldier_Ammo", "CUP_O_INS_Soldier_AR"];
	
	// _grp1 = [getMarkerPos "patrol_spawn", east,["OPTRE_Ins_ER_Guerilla_AR", "OPTRE_Ins_ER_Insurgent_BR", "OPTRE_Ins_ER_Autorifleman"],[],[],[],[],[],20] call BIS_fnc_spawnGroup;

	_grp1 = [getMarkerPos "patrol_spawn", east,[selectRandom _enemyTypes, selectRandom _enemyTypes, selectRandom _enemyTypes],[],[],[],[],[],20] call BIS_fnc_spawnGroup;
	_grp1 deleteGroupWhenEmpty true;

	_myNearestEnemy = player findNearestEnemy player;
	_myNearestEnemyPos = getPos _myNearestEnemy;

	hintSilent str getPos _myNearestEnemy;

	_patrolTrg = createTrigger["EmptyDetector", getMarkerPos "patrol_trigger"];
	_patrolTrg setTriggerArea [150, 150, 0, false];
	_patrolTrg setTriggerActivation["EAST", "NOT PRESENT", false];
	_patrolTrg setTriggerStatements["this", "hint 'patrol is dead'", ""];
};