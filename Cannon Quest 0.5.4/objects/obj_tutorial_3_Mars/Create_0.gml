/// @description setup rm_Mars

stepCount = 0;

setupCamera();
room_persistent = true;//Keep room state when leaving

//Constants defined in obj_SolarSystem
//#macro AU 3000//1 Astronomical Unit
//#macro lunarDist 500//Distance to moon	
//#macro phobosDistMarsRm 200
//#macro deimosDistMarsRm 400

G = 1;



//List all astronomical bodies in the room
var mars = instance_find(obj_mars,0);
var phobos = instance_find(obj_phobos,0);
var deimos = instance_find(obj_deimos,0);

//Configure Mars
mars.x = room_width/2;
mars.y = room_height/2;
mars.mass = 2000;
mars.soi = 2147483647;
mars.rotationRate = 30;
mars.lockSOI = true;

//Configure phobos
phobos.currentAttractor = mars;
phobos.x = mars.x + (mars.sprite_width /2) + phobosDistMarsRm;
phobos.y = mars.y;
phobos.mass = 100;
phobos.soi = 100;
phobos.direction = 90;
phobos.speed = mars.speed + calcCircularOrbitalVel(mars,(mars.sprite_width/2)+phobosDistMarsRm) + 0.05;//Offset at the end to get a less perfectly circular orbit
phobos.lockSOI = true;

//Configure Deimos
deimos.currentAttractor = mars;
deimos.x = mars.x - (mars.sprite_width /2) - deimosDistMarsRm;
deimos.y = mars.y;
deimos.mass = 80;
deimos.soi = 80;
deimos.direction = -90;
deimos.speed = mars.speed + calcCircularOrbitalVel(mars,(mars.sprite_width/2)+deimosDistMarsRm) + 0.05;//Offset at the end to get a less perfectly circular orbit
deimos.lockSOI = true;


//Setup camera and cannon
focusCamera(mars);
updateSpeedIndicator();