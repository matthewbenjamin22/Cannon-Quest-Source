/// @description setup rm_SolarSystem

stepCount = 0;

planetsRotate = false;

setupCamera();
room_persistent = true;//Keep room state when leaving

//Constants defined in obj_SolarSystem
//#macro AU 3000//1 Astronomical Unit
//#macro lunarDist 500//Distance to moon	


G = 1;



//List all astronomical bodies in the room
var earth = instance_nearest(0,0,obj_earth);
var moon = instance_find(obj_moon,0);


//Configure Sun
//We place the sun in the center of the room
earth.x = room_width/2;
earth.y = room_height/2;

//Configure Earth
//We place the earth at one astronomical unit to the right of the sun
earth.mass = 4000;
earth.soi = 2147483647;
earth.rotationRate = 30;
earth.lockSOI = true;

//Configure Moon
moon.currentAttractor = earth;
moon.x = earth.x + (earth.sprite_width /2) + lunarDist;
moon.y = earth.y;
moon.mass = 500;
moon.soi = 300;
moon.direction = 90;
moon.speed = earth.speed + calcCircularOrbitalVel(earth,(earth.sprite_width/2)+lunarDist) + 0.05;//Offset at the end to get a less perfectly circular orbit
moon.lockSOI = true;

//Setup camera and cannon
focusCamera(earth);
updateSpeedIndicator();