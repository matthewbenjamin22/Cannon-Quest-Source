/// @description Create Cannon
event_inherited();
isCannon = true;

direction = 180;
planet = instance_nearest(x,y,obj_gravityAttractorObject);
maxElevation = 118;
minElevation = 22;
elevation = minElevation;
planet.linkedCannon = self;

name = planet.name + " Cannon";