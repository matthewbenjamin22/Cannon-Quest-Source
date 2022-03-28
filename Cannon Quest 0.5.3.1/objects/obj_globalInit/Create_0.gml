//Initialize Global Variables

//Camera
setResolution(1);//Default to smallest Resolution
fullscreen = true;//Default to fullscreen on;
zoomFactor = 1;
cameraFocus = noone;


//Physics
paused = false;

//Controls
activeObject = noone;
activeObjectType = body;
ammoType = cannonball;
fireSpeed = 5.0;
fireSpeed_multiplier = 0.9;
maxFireSpeed = 10.0;
minFireSpeed = 0;
followCannonballsWhenFired = false;
lockCannon = true;

//Gameplay
showAtmospheres = true;
planetsRotate = true;
tracersFollow = true;
tracersDelete = true;
showArrows = false;
cannonballNameIndex = 0;

setupCamera();
window_set_fullscreen(fullscreen);
setupCamera();

instance_destroy(self);//Delete myself so I don't appear again