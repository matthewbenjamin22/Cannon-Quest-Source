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
setupCamera();
globalvar cameraFocus;
cameraFocus = noone;


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
globalvar activeCannon;
globalvar fireSpeed;
fireSpeed = 5.0;
globalvar maxFireSpeed;
maxFireSpeed = 10.0;
globalvar minFireSpeed;
minFireSpeed = 0;
globalvar followCannonballsWhenFired;
followCannonballsWhenFired = false;
globalvar lockCannon;
lockCannon = true;

//Atmospheres and Rotation
globalvar showAtmospheres;
showAtmospheres = true;
globalvar planetsRotate;
planetsRotate = true;

//Tracer settings
globalvar tracersFollow;
globalvar tracersDelete;
tracersFollow = true;
tracersDelete = true;

//Arrow settings
globalvar showArrows;
showArrows = false;

x = 1;

globalvar cannonballNameIndex;
cannonballNameIndex = 0;