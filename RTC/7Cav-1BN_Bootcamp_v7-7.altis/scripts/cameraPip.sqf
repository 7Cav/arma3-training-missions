grad_cam = "camera" camCreate [0,0,0];
grad_cam camSetPos [
	getPos grad_cam_obj select 0,
	getPos grad_cam_obj select 1,
	(getPos grad_cam_obj select 2) + 1.5
];

grad_cam cameraEffect ["Internal", "Back", "pip_grad"];

grad_cam camSetFov 0.5;
//grad_cam camSetTarget grad_cam_target;
grad_cam setDir 262;
grad_cam camCommit 0;

grad_cam_laptop setObjectTextureGlobal [0, "#(argb,512,512,1)r2t(pip_grad,1)"];