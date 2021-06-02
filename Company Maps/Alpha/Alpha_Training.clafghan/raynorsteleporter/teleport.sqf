
params ["_callerObj","_caller","_id","_dest"];

_vector = vectorNormalized ((getPos _callerObj) vectorFromTo (getPos player));

_destPos = getPosATL _dest;

_randDir = random 359;
_pos = [(_destPos select 0) - 4 * (_vector select 0),(_destPos select 1) - 4 * (_vector select 1), (_destPos select 2) + 0.3];

player setPosATL _pos;

player setDir (getDir player + 180);