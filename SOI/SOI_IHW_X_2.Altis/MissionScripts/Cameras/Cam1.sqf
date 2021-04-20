cam1 = "camera" camCreate getPos cam_1;
cam1 cameraEffect ["Internal", "Back", "rtt_1"];
cam1 attachTo [cam_1];
fov1 = .05;
cam1 camSetFov fov1; //Zoom
"rtt" setPiPEffect [0]; //2 Thermal
cam1 camSetTarget target_1;
cam1 camCommit 1;