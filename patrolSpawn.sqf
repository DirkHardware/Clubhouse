if(isServer) then {
	
	_grp1 = [getMarkerPos "patrol_spawn", east,["OPTRE_Ins_ER_Guerilla_AR", "OPTRE_Ins_ER_Insurgent_BR", "OPTRE_Ins_ER_Autorifleman"],[],[],[],[],[],20] call BIS_fnc_spawnGroup;


	_patrolTrg = createTrigger["EmptyDetector", getMarkerPos "patrol_trigger"];
	_patrolTrg setTriggerArea [150, 150, 0, false];
	_patrolTrg setTriggerActivation["EAST", "NOT PRESENT", false];
	_patrolTrg setTriggerStatements["this", "hint 'patrol is dead'", ""];
};