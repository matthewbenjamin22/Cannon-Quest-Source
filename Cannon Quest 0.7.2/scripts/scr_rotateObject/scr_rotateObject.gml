//Rotates an object
function rotateObject(inst)
{
	if(planetsRotate)
		inst.image_angle++;
}

//Rotate Backwards (venus)
function rotateInverted(inst)
{
	if(planetsRotate)
		inst.image_angle--;
}

//Lock one side of a body toward it's attractor, like the Moon
function tidallyLock(inst)
{
	inst.image_angle = inst.attractorDirection;
}