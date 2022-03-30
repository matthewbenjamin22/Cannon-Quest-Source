/// @description End CCW Motion

// Inherit the parent event
event_inherited();

try
{
	if(pressed && activeObjectType == spaceship && activeObject.CCWOn)
	{	
		pressed = false;
		activeObject.CCWOn = false;
	}
}
catch(_exception)
{
	//Do nothing
}