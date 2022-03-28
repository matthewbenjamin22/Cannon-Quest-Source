/// @description End CCW Motion
//Key up Left Arrow
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