if(isServer) then {
_baseTrigger = createTrigger["EmptyDetector", getMarkerPos "base_trigger_marker"];
_baseTrigger setTriggerArea [150, 150, 0, false];
_baseTrigger setTriggerActivation["ANYPLAYER", "PRESENT", true];
_baseTrigger setTriggerStatements["this", "execVM 'patrolSpawn.sqf'", ""];
};
