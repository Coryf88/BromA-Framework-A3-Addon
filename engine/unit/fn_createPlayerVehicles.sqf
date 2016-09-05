
if (isServer) then {

    #include "\broma_framework\loadouts\includes\vehicles-index.sqf"

    _allMarkers = (missionConfigFile >> "Mission" >> "Mission" >> "Entities");

    _center = createCenter sideLogic;
    _group = createGroup _center;

    for "_i" from 1 to ((count _allMarkers) - 1) do {

        if (getText(_allMarkers select _i >> "dataType") == "Marker") then {

            _mkName = getText(_allMarkers select _i >> "name");
            _originalMarker = _mkName;

            _mkPos = getMarkerPos _mkName;
            _mkDir = markerDir _mkname;

            _find = [_mkName, "_"] call CBA_fnc_find;

            if (_find > -1) then {
                _mkName = [_mkName, "_"] call CBA_fnc_split;

                if (([(_mkName select 0), 0, 3] call CBA_fnc_substr) == "veh") then {
                    ["LOCAL", "F_LOG", format ["[MARKER VEHICLE]: Valid marker %1 @%2", _mkName, _mkPos]] call BRM_FMK_fnc_doLog;

                    _originalMarker setMarkerAlpha 0;

                    _index = -1;

                    _cargo = [];

                    _vehName = "";

                    if (count (_mkName select 0) > 3) then {
                        _vehName = [(_mkName select 0), 3, count (_mkName select 0)] call CBA_fnc_substr;
                    };

                    switch (_mkName select 2) do {
                        case "AntiAir": { _index = AA_VEHICLES };
                        case "AttackHelo": { _index = ATTACK_HELOS; _cargo = ["parachutes"] };
                        case "AttackPlane": { _index = ATTACK_PLANES; _cargo = ["parachutes"] };
                        case "HeavyVehicle": { _index = HEAVY_VEHICLES };
                        case "LightVehicle": { _index = LIGHT_VEHICLES; _cargo = ["ammo","AT"] };
                        case "MediumVehicle": { _index = MEDIUM_VEHICLES; _cargo = ["ammo_big"] };
                        case "MobileArty": { _index = MOBILE_ARTILLERY };
                        case "TransportHelo": { _index = TRANSPORT_HELOS; _cargo = ["ammo","parachutes", "medical","medical_adv"] };
                        case "TransportPlane": { _index = TRANSPORT_PLANES; _cargo = ["parachutes"] };
                        case "Truck": { _index = TRANSPORT_TRUCKS; _cargo = ["ammo_big"] };
                        case "Static": { _index = STATIC_DEFENSE };
                        case "Boat": { _index = BOATS; _cargo = ["ammo"] };
                        case "Support": { _index = SUPPORT; ["ammo","medical","medical_adv"] };
                        case "Submarine": { _index = SUBMARINES };
                        case "MRAPVehicle": { _index = MRAP_VEHICLES; _cargo = ["ammo","AT"] };
                    };

                    if (_index > -1) then {
                        private ["_vehicleClass", "_factionSide"];

                        _faction = (_mkName select 1);
                        _factionSide = "";
                        _defaultSide = WEST;

                        #include "\broma_framework\loadouts\includes\get-faction.sqf"

                        _loadoutPool = [_faction, "VEHICLES"] call BRM_fnc_getLoadoutProperty;

                        if ((count (_loadoutPool select _index)) > 0) then {

                            if (!((_mkName select 3) in ["0","1","2","3","4","5","6","7","8","9"])) then {
                                {
                                    _splitName = [_x, "_"] call CBA_fnc_split;

                                    if ((_mkName select 3) in _splitName) exitWith { _vehicleClass = _x };
                                    _vehicleClass = (_loadoutPool select _index) call BIS_fnc_selectRandom;
                                } forEach (_loadoutPool select _index);
                            } else {
                                _vehicleClass = (_loadoutPool select _index) call BIS_fnc_selectRandom;
                            };

                            private ["_vehicle"];

                            _vehicleExists = isClass((configFile >> "CfgVehicles" >> _vehicleClass));

                            if (_vehicleExists) then {
                                if (_vehName == "") then {
                                    _vehicle = createVehicle [_vehicleClass, [0 + (random(150)), 0 + (random(150)),50 + 0 + (random(150))], [], 0, "NONE"];
                                } else {
                                    call compile format ["%1 = createVehicle [_vehicleClass, [0 + (random(150)), 0 + (random(150)),50 + 0 + (random(150))], [], 0, 'NONE']; _vehicle = %1; publicVariable '%1';", _vehName];
                                };

                                [_vehicle, _faction, _cargo] call BRM_fnc_assignCargo;

                                _vehicle enableSimulation false;
                                _vehicle allowDamage false;

                                _mkPos set [2, 0.1];

                                _vehicle setVectorUp [0,0,0];
                                _vehicle setPosATL _mkPos;
                                _vehicle setDir _mkDir;

                                _vehicle enableSimulation true;
                                _vehicle allowDamage true;

                                ["LOCAL", "F_LOG", format ["[MARKER VEHICLE]: Created vehicle %1.", _vehicle]] call BRM_FMK_fnc_doLog;
                            } else {
                                ["LOCAL", "F_LOG", format["[!!!! ERROR ON MARKER VEHICLE !!!!]: '%1' is not a valid vehicle.", _vehicleClass]] call BRM_FMK_fnc_doLog;
                            };
                        };
                    };
                };
            };
        };
    };
    server_vehicles_created = true; publicVariable "server_vehicles_created";
};