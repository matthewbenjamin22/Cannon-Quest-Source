/// @description Sets up generic Physics Object

event_inherited();
isBody = true;


currentAttractor = noone;
distanceToAttractor = 2147483647;//Max Value
name = "null physics object";


directionArrow = instance_create_layer(x,y,"Arrow_Layer",obj_DirectionArrow);
attractionArrow = instance_create_layer(x,y,"Arrow_Layer",obj_AttractionArrow);

attractorDirection = 0;
lastAcceleration = 0;
tidallyLocked = false;//Enable to lock facing planet
invertRotation = false;
rotationRate = 0;//Set to 0 to disable. Irrelevant if tidally Locked
stepCount = 0;


previousDistance = 0;
bool_isFalling = true;

radius = sprite_width / 2;
linkedCannon = noone;
lockSOI = false;//Used to lock an objects current Sphere of Influence. Useful for moons.

