/// @description End CCW Motion
//Key up A
setHighlight(CCWButton,0);
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