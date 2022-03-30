/// @description Refocus

try
{
	if(activeObject == noone || activeObject.isBody)
	{
		var mainMenuButton = instance_find(obj_ButtonMainMenu,0);
		var bell = instance_nearest(mainMenuButton.x,mainMenuButton.y,obj_cannonBell);
		focusCamera(bell.planet);
	}
}
catch(_exception)
{
	//DoNothing
}