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


if(image_index != 0)
{
	image_speed = 0.5;
}
if(image_index >= 5)
{
	image_speed = 0;
	image_index = 0;	
}