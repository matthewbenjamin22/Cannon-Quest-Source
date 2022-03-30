/// @description Move cannon or spaceship CCW
//Key down A
setHighlight(CCWButton,2);
try
{
	if(activeObjectType == cannon)
		cannonCCW();
	else if(activeObjectType == spaceship)
	{
		pressed = true;
		activeObject.CCWOn = true;
		activeObject.spaceshipCCW();
	}
}
catch(_exception)
{
	//Do nothing
}