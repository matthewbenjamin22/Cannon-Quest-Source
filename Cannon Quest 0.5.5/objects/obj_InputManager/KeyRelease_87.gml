/// @description End engine Firing
//Key up W
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