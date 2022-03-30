/// @description setup rm_SolarSystem

stepCount = 0;

setupCamera();
room_persistent = false;//Keep room state when leaving

planetsRotate = false;

//Constants defined in obj_SolarSystem
//#macro AU 3000//1 Astronomical Unit
//#macro lunarDist 500//Distance to moon	


G = 1;

//List all astronomical bodies in the room
var earth = instance_nearest(0,0,obj_earth);

//We place the sun in the center of the room
earth.x = room_width/2;
earth.y = room_height/2;

//Configure Earth

earth.mass = 4000;
earth.soi = 2147483647;
earth.rotationRate = 30;
earth.lockSOI = true;

//Setup camera and cannon
focusCamera(earth);
updateSpeedIndicator();