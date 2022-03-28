//Rotates an object
function rotateObject(inst)
{
	inst.image_angle--;
}

function tidallyLock(inst)
{
	//var dir = point_direction(inst.x,inst.y,inst.currentAttractor.x,inst.currentAttractor.y);
	inst.image_angle = inst.attractorDirection;
}