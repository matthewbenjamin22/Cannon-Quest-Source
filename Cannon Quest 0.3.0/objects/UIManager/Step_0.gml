/// @description Check the active object



if(activeObject == noone)
	activeObject = instance_find(obj_defaultActiveObject,0);
else
{
	if(activeObject.isCannon)
		activeObjectType = cannon;
	else if(activeObject.isSpaceship)
		activeObjectType = spaceship;
	else if(activeObject.isBody)
		activeObjectType = body;
}