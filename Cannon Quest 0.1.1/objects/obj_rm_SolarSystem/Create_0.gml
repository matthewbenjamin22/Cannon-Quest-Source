/// @description setup rm_SolarSystem

AU = 3000;//1 Astronomical Unit

//List all astronomical bodies in the room
var earth = instance_nearest(0,0,obj_earth);
var sun = instance_nearest(0,0,obj_sun);
var arrow = instance_nearest(0,0,obj_YellowArrow);
//moon = instance_find(obj_moon,0);



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
earth.mass = 500;
earth.soi = 800;
//earth.vspeed = -1.15470053837925153;
var velo = calcCircularOrbitalVel(sun,AU);
earth.direction = 90;
earth.speed = velo;

//Configure Arrow
arrow.x = earth.x + earth.radius;
arrow.y = earth.y;