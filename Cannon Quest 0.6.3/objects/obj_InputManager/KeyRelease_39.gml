/// @description End CCW Motion
//Key Up D
setHighlight(CWButton,0);
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
