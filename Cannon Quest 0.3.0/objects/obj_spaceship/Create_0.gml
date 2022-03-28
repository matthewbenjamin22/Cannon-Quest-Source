/// @description setup spaceship and handle animations

// Inherit the parent event
event_inherited();

name = "Spaceship " + string(cannonballNameIndex++);

image_speed = 0;
isSpaceship = true;

engineOn = false;
CWOn = false;
CCWOn = false;

function fireEngine(amount)
{
	motion_add(image_angle,amount);
}
function spaceshipCW()
{
	image_angle -= turnRate;
}
function spaceshipCCW()
{	
	activeObject.image_angle += turnRate;
}