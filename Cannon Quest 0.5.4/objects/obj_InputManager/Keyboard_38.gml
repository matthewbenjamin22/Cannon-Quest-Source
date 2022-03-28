/// @description Move cannon up or spaceship forward
//Key Down Up Arrow
setHighlight(upButton,2);
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