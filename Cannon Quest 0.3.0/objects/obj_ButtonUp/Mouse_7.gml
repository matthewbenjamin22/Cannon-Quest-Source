/// @description End engine Firing

// Inherit the parent event
event_inherited();

try
{
	if(pressed && activeObjectType == spaceship && activeObject.engineOn)
	{
		pressed = false;
		activeObject.engineOn = false;
	}
}
catch(_exception)
{
	//Do nothing
}