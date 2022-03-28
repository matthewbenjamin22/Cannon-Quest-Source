/// @description setup rm_SolarSystem

room_persistent = false;//Keep room state when leaving

//Constants
#macro AU 3000//1 Astronomical Unit
#macro lunarDist 500//Distance to moon

G = 1;



//List all astronomical bodies in the room
var earth = instance_nearest(0,0,obj_earth);
var sun = instance_nearest(0,0,obj_sun);
var moon = instance_find(obj_moon,0);
var mars = instance_find(obj_mars, 0);
var phobos = instance_find(obj_phobos,0);
var deimos = instance_find(obj_deimos,0);

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
earth.mass = 2000;
earth.soi = 800;
earth.rotationRate = 30;
//earth.vspeed = -1.15470053837925153;
var velo = calcCircularOrbitalVel(sun,AU);
earth.direction = 90;
earth.speed = velo + 0.01;
earth.lockSOI = true;

//Configure Moon
moon.currentAttractor = earth;
moon.x = earth.x + lunarDist;
moon.y = earth.y;
moon.mass = 100;
moon.soi = 150;
moon.direction = earth.direction;
moon.speed = earth.speed + calcCircularOrbitalVel(earth,lunarDist) + 0.05;//Offset at the end to get a less perfectly circular orbit
moon.lockSOI = true;

//Configure Mars
mars.currentAttractor = sun;
mars.x = sun.x - (2*AU);
mars.y = sun.y;
mars.rotationRate = 40;
mars.direction = -90;
mars.mass = earth.mass * (1/3);
mars.soi = 1000;
mars.speed = calcCircularOrbitalVel(sun, 2*AU) + 0.05;
mars.lockSOI = true;

//Configure Phobos
phobos.currentAttractor = mars;
phobos.x = mars.x - (mars.sprite_width / 2) - 50;
phobos.y = mars.y;
phobos.direction = -90;
phobos.soi = 5;
phobos.mass = 5;
phobos.speed = mars.speed + calcCircularOrbitalVel(mars, (mars.sprite_width / 2) + 50) + 0.01;
phobos.lockSOI = true;

//Configure Deimos
deimos.currentAttractor = mars;
deimos.x = mars.x - (mars.sprite_width / 2) - 100;
deimos.y = mars.y;
deimos.direction = -90;
deimos.soi = 10;
deimos.mass = 4;
deimos.speed = mars.speed + calcCircularOrbitalVel(mars, (mars.sprite_width/2)+100) + 0.05;
deimos.lockSOI = true;

//Setup camera and cannon
focusCamera(earth);
activeCannon = instance_find(obj_cannonBell,0);
updateSpeedIndicator();

//Configure Start Arrow
var arrow = instance_find(obj_YellowArrow,0);
arrow.x = earth.x + earth.radius;
arrow.y = earth.y;