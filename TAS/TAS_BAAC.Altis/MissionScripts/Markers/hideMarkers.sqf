
params ["_unit"];

_pickupRequest = [
	"pickupRequest_1", 
	"pickupRequest_2", 
	"pickupRequest_3", 
	"pickupRequest_4", 
	"pickupRequest_5", 
	"pickupRequest_6", 
	"pickupRequest_7", 
	"pickupRequest_8", 
	"pickupRequest_9", 
	"pickupRequest_10", 
	"pickupRequest_11", 
	"pickupRequest_12", 
	"pickupRequest_13", 
	"pickupRequest_14", 
	"pickupRequest_16", 
	"pickupRequest_15", 
	"pickupRequest_17", 
	"pickupRequest_18", 
	"pickupRequest_19", 
	"pickupRequest_20", 
	"pickupRequest_21", 
	"pickupRequest_22", 
	"pickupRequest_23", 
	"pickupRequest_24"
];

{_x setMarkerAlphaLocal 0} forEach _pickupRequest;
