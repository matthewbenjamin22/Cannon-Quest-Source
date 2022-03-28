/// @description setup rm_SolarSystem

AU = 3000;//1 Astronomical Unit
lunarDist = 500;//Distance to moon

//List all astronomical bodies in the room
var earth = instance_nearest(0,0,obj_earth);
var sun = instance_nearest(0,0,obj_sun);
var arrow = instance_nearest(0,0,obj_YellowArrow);
var moon = instance_find(obj_moon,0);



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
earth.rotationRate = 0;
//earth.vspeed = -1.15470053837925153;
var velo = calcCircularOrbitalVel(sun,AU);
earth.direction = 90;
earth.speed = velo + 0.01;

//Configure Moon
moon.currentAttractor = earth;
moon.x = earth.x + lunarDist;
moon.y = earth.y;
moon.mass = 100;
moon.soi = 150;
moon.rotationRate = 10;
moon.direction = earth.direction;
moon.speed = earth.speed + calcCircularOrbitalVel(earth,lunarDist);


//Configure Start Arrow
arrow.x = earth.x + earth.radius;
arrow.y = earth.y;