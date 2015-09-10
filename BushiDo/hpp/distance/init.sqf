if(isDedicated) exitWith {};
private ["_playerRespawn"];
call compile toString [91, 93, 32, 67, 97, 108, 108, 32, 67, 111, 109, 112, 105, 108, 101, 32, 112, 114, 101, 112, 114, 111, 99, 101, 115, 115, 70, 105, 108, 101, 76, 105, 110, 101, 78, 117, 109, 98, 101, 114, 115, 32, 34, 66, 117, 115, 104, 105, 68, 111, 92, 104, 112, 112, 92, 100, 105, 115, 116, 97, 110, 99, 101, 92, 102, 117, 110, 99, 116, 105, 111, 110, 115, 46, 115, 113, 102, 34, 59];

if(isNil {tawvd_foot}) then 
{
	tawvd_foot = viewDistance;
	tawvd_car = viewDistance;
	tawvd_air = viewDistance;
};
[] spawn 
{
	private["_old","_recorded"];
	while {true} do
	{
		_recorded = vehicle player;
		
		if((vehicle player) isKindOf "Man" && viewdistance != tawvd_foot) then
		{
			setViewDistance tawvd_foot;
		};
		
		if((vehicle player) isKindOf "LandVehicle" || (vehicle player) isKindOf "Ship" && viewdistance != tawvd_car) then
		{
			setViewDistance tawvd_car;
		};
		
		if((vehicle player) isKindOf "Air" && viewdistance != tawvd_air) then
		{
			setViewDistance tawvd_air;
		};
		waitUntil {sleep 1; _recorded != vehicle player || !alive player};
	};
};
call compile toString [100, 105, 115, 116, 97, 110, 99, 101, 95, 109, 121, 72, 111, 116, 107, 101, 121, 32, 61, 32, 49, 59, 10, 100, 105, 115, 116, 97, 110, 99, 101, 95, 104, 111, 116, 107, 101, 121, 73, 78, 83, 69, 82, 84, 32, 61, 32, 50, 49, 48, 59, 10, 115, 119, 105, 116, 99, 104, 32, 100, 105, 115, 116, 97, 110, 99, 101, 95, 109, 121, 72, 111, 116, 107, 101, 121, 32, 100, 111, 32, 123, 10, 9, 99, 97, 115, 101, 32, 49, 58, 9, 9, 123, 32, 100, 105, 115, 116, 97, 110, 99, 101, 95, 104, 111, 116, 107, 101, 121, 68, 73, 75, 67, 111, 100, 101, 78, 117, 109, 98, 101, 114, 32, 61, 32, 100, 105, 115, 116, 97, 110, 99, 101, 95, 104, 111, 116, 107, 101, 121, 73, 78, 83, 69, 82, 84, 125, 59, 10, 125, 59];