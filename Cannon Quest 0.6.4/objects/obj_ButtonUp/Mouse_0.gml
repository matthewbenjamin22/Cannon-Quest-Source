/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

try
{
	if(activeObjectType == cannon)
		cannonUp();
	else if(activeObjectType == spaceship)
	{		
		pressed = true;
		activeObject.engineOn = true;
		activeObject.fireEngine(spaceshipAccelerationRate);
	}
}
catch(_exception)
{
	//Do nothing
}