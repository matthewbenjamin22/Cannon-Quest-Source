/// @description setup rm_SolarSystem

stepCount = 0;

setupCamera();
room_persistent = true;//Keep room state when leaving

//Constants
#macro mercuryDistance 1500//Mercury Distance
#macro venusDistance 2500//Venus Distance
#macro AU 4500//1 Astronomical Unit
#macro lunarDist 500//Distance to moon
#macro marsDist 6000//Distance to Mars
#macro phobosDist 100//Distance to Phobos
#macro deimosDist 200//Distance to Deimos



G = 1;



//List all astronomical bodies in the room
var earth = instance_nearest(0,0,obj_earth);
var sun = instance_nearest(0,0,obj_sun);
var moon = instance_find(obj_moon,0);
var mars = instance_find(obj_mars, 0);
var phobos = instance_find(obj_phobos,0);
var deimos = instance_find(obj_deimos,0);
var venus = instance_find(obj_venus,0);
var mercury = instance_find(obj_mercury,0);

//Configure Sun
//We place the sun in the center of the room
sun.x = room_width/2;
sun.y = room_height/2;


sun.mass = 10000;

//Configure Earth
//We place the earth at one astronomical unit to the right of the sun
earth.currentAttractor = sun;
earth.x = sun.x + AU;
earth.y = sun.y;
earth.mass = 4000;
earth.soi = 1000;
earth.rotationRate = 30;
earth.direction = 90;
earth.speed = calcCircularOrbitalVel(sun,AU) + 0.01;
earth.lockSOI = true;

//Configure Moon
moon.currentAttractor = earth;
moon.x = earth.x + (earth.sprite_width /2) + lunarDist;
moon.y = earth.y;
moon.mass = 500;
moon.soi = 300;
moon.direction = earth.direction;
moon.speed = earth.speed + calcCircularOrbitalVel(earth,(earth.sprite_width/2)+lunarDist) + 0.05;//Offset at the end to get a less perfectly circular orbit
moon.lockSOI = true;

//Configure Mars
mars.currentAttractor = sun;
mars.x = sun.x - (marsDist);
mars.y = sun.y;
mars.rotationRate = 40;
mars.direction = -90;
mars.mass = earth.mass * (1/3);
mars.soi = 1000;
mars.speed = calcCircularOrbitalVel(sun, marsDist) + 0.05;
mars.lockSOI = true;

//Configure Phobos
phobos.currentAttractor = mars;
phobos.x = mars.x - (mars.sprite_width / 2) - phobosDist;
phobos.y = mars.y;
phobos.direction = -90;
phobos.soi = 5;
phobos.mass = 5;
phobos.speed = mars.speed + calcCircularOrbitalVel(mars, (mars.sprite_width / 2) + phobosDist) + 0.01;
phobos.lockSOI = true;

//Configure Deimos
deimos.currentAttractor = mars;
deimos.x = mars.x - (mars.sprite_width / 2) - deimosDist;
deimos.y = mars.y;
deimos.direction = -90;
deimos.soi = 10;
deimos.mass = 4;
deimos.speed = mars.speed + calcCircularOrbitalVel(mars, (mars.sprite_width/2) + deimosDist) + 0.05;
deimos.lockSOI = true;

//Configure Mercury
mercury.currentAttractor = sun;
mercury.x = sun.x;
mercury.y = sun.y + mercuryDistance;
mercury.direction = 0;
mercury.speed = calcCircularOrbitalVel(sun,mercuryDistance) + 0.1;//Mercury has eliptical orbit - high turn rate
mercury.soi = 400;
mercury.rotationRate = 30;
mercury.mass = 500;
mercury.lockSOI = true;

//Configure Venus
venus.currentAttractor = sun;
venus.x = sun.x;
venus.y = sun.y - venusDistance;
venus.direction = 180;
venus.speed = calcCircularOrbitalVel(sun,venusDistance) + 0.06;
venus.mass = earth.mass;
venus.soi = 800;
venus.lockSOI = true;

//Setup camera and cannon
focusCamera(earth);
updateSpeedIndicator();

