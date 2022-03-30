/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

try
{
	if(activeObjectType == cannon)
		cannonCW();
	else if(activeObjectType == spaceship)
	{
		pressed = true;
		activeObject.CWOn = true;
		activeObject.spaceshipCW();
	}
}
catch(_exception)
{
	//Do nothing
}