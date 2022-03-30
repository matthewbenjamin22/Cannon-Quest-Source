/// @description Move cannon or spaceship Clockwise
//Key Down D
setHighlight(CWButton,2);
try
{
	if(activeObjectType == cannon)
	{
		cannonCW();
	}
	else if(activeObjectType == spaceship)
	{
		pressed = true;
		activeObject.CWOn = true;
		activeObject.spaceshipCW();
	}
}
catch(_exception)
{
	//Do nothing
}