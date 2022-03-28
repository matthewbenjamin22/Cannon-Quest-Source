/// @description Create a generic tracer ball
maxAge = 1000;
ageCount = 0;

creator = instance_nearest(x,y,obj_physicsObject);
attractor = creator.currentAttractor;
if(attractor == noone)//Don't trace any object not orbiting another
	instance_destroy();
