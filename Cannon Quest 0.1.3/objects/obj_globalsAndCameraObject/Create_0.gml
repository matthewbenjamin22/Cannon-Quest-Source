/// @description Sets up global variables and camera controls

//Screen Controls
globalvar xResolution;
globalvar yResolution;
setResolution(1);//Default to smallest Resolution
globalvar fullscreen;
fullscreen = false;//Default to fullscreen off;
globalvar zoomFactor;
zoomFactor = 1;
globalvar maxZoom;
maxZoom = 15;
globalvar cameraFocus;
cameraFocus = instance_find(obj_earth, 0);
setupCamera(cameraFocus);


//Debug Controls
globalvar SOITestMode;
globalvar AccelerationTestMode;
globalvar infoTestMode;
SOITestMode = 0;
AccelerationTestMode = 0;
infoTestMode = 0;

//Constant of gravitation
globalvar G;
//G = 6.673 * power(10, -11);//Real World
G = 2;

//Physics Pause
globalvar paused;
paused = 0;

//Cannon Fire settings
globalvar fireSpeed;
fireSpeed = 5.0;
globalvar followCannonballsWhenFired;
followCannonballsWhenFired = false;


//Tracer settings
globalvar tracersFollow;
globalvar tracersDelete;
tracersFollow = true;
tracersDelete = true;

//Arrow settings
globalvar showArrows;
showArrows = true;

x = 1;

globalvar index;
index = 0;