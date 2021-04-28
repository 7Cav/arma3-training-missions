
#include "..\script_component.hpp";

params ["_user"];

#define ApplyTape(var) _user setObjectTextureGlobal [3,"Data\Tapes\" + var + ".paa"]

switch (getPlayerUID _user) do {

	case "76561198099828056": { ApplyTape("Whitsel") }; //Whitsel / Ranger

	case "76561197962051582": { ApplyTape("Brostrom") }; //Ranger

	case "76561198149329790": { ApplyTape("Mazinsk") }; //School Lead

	case "76561198030252880": { ApplyTape("Burton") }; //School Lead / Ranger

	case "PLACEHOLDER": { ApplyTape("Eagas") }; //School Lead

	case "76561197995041250": { ApplyTape("Black") }; //Ranger

	case "76561198078579510": { ApplyTape("Saint") }; //Ranger

	case "76561198035963232": { ApplyTape("Trunkman") }; //Ranger

	case "76561198006952602": { ApplyTape("Rosefield") }; //Ranger

	case "76561197982880142": { ApplyTape("Crapachi") }; //Ranger

	case "76561198023841569": { ApplyTape("LaCombe") }; //Ranger

	case "76561198007260563": { ApplyTape("Tharen") }; //Ranger

	case "76561198078826702": { ApplyTape("Nomad") }; //Ranger

	case "76561197975847830": { ApplyTape("Hess") }; //Ranger

	case "GUID1": { ApplyTape("Coots") }; //Ranger

	case "76561198086107926": { ApplyTape("Couvillion") }; //Ranger

	case "76561198252393266": { ApplyTape("Hobbs") }; //Ranger

	case "76561198076067005": { ApplyTape("Whitfield") }; //Ranger

	case "76561198073062030": { ApplyTape("Ocean") }; //Ranger

	case "76561198011358683": { ApplyTape("Richards") }; //Ranger

	default {};
};
