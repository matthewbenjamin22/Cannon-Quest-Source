//Initialize Global Variables

//Camera
try
{
	loadSettings();
}
catch(_exception)
{
	show_debug_message(_exception.message);
	show_debug_message("Settings could not be loaded.");
	setResolution(1);//Default to smallest Resolution
	fullscreen = true;//Default to fullscreen on;
	mute = false;
}

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
planetsRotate = false;
tracersFollow = true;
tracersDelete = true;
showArrows = false;
cannonballNameIndex = 0;

setupCamera();
window_set_fullscreen(fullscreen);
setupCamera();

/*
//Turn on music
var musicManager = instance_find(obj_musicManager,0);
musicManager.playCin = true;
musicManager.playITH = false;
*/
instance_destroy(self);//Delete myself so I don't appear again