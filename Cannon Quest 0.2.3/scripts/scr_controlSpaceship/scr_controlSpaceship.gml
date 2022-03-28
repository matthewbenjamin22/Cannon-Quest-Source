//General controls for spaceships

function spaceshipCW()
{
	activeObject.image_angle--;
}

function spaceshipCCW()
{
	activeObject.image_angle++;
}

function spaceshipForward()
{
	activeObject.motion_add(image_angle, 0.1);
}