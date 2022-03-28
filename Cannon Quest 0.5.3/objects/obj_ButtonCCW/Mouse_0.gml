/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

try
{
	if(activeObjectType == cannon)
		cannonCCW();
	else if(activeObjectType == spaceship)
	{
		pressed = true;
		activeObject.CCWOn = true;
		activeObject.spaceshipCCW();
	}
}
catch(_exception)
{
	//Do nothing
}