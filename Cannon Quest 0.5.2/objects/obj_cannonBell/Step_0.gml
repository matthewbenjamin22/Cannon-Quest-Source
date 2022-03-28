//Updates the cannon position and direction

updateCannonPosition(self);

if(lockCannon && planetsRotate)
{
	if(planet.stepCount % planet.rotationRate == 0)
	{
		direction++;
	}
}		
image_angle = direction;