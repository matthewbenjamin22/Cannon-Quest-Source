/// @description End CW Motion

// Inherit the parent event
event_inherited();

try
{
	if(pressed && activeObjectType == spaceship && activeObject.CWOn)
	{
		pressed = false;
		activeObject.CWOn = false;
	}
}
catch(_exception)
{
	//Do nothing
}