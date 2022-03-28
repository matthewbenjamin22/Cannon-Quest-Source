/// @description Sets up global variables and camera controls

//Screen Controls
globalvar xResolution;
globalvar yResolution;
setResolution(1);//Default to smallest Resolution
globalvar fullscreen;
fullscreen = false;//Default to fullscreen off;

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

//Cannon Fire speed
globalvar fireSpeed;
fireSpeed = 5.0;

//Tracer settings
globalvar tracersFollow;
globalvar tracersDelete;
tracersFollow = true;
tracersDelete = true;

//Arrow settings
globalvar showArrows;
showArrows = true;

setupCamera();

x = 1;

globalvar index;
index = 0;