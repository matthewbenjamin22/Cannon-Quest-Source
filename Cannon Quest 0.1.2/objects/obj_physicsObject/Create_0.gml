/// @description Sets up generic Physics Object

event_inherited();

currentAttractor = noone;
distanceToAttractor = 2147483647;//Max Value
name = "null";


directionArrow = instance_create_layer(x,y,"Arrow_Layer",obj_DirectionArrow);
attractionArrow = instance_create_layer(x,y,"Arrow_Layer",obj_AttractionArrow);

attractorDirection = 0;
lastAcceleration = 0;
rotationRate = 0;
stepCount = 0;


previousDistance = 0;
bool_isFalling = 1;

radius = sprite_width / 2;

