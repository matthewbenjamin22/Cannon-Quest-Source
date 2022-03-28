/// @description End engine Firing
//Key up Up Arrow
setHighlight(upButton,0);
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