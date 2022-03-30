/// @description Check the active object

try
{
	zoomCamera(mouse_wheel_down() - mouse_wheel_up());//Zooms the camera in and out using the mouse wheel
	if(activeObject == noone)
	{
		activeObject = instance_find(obj_defaultActiveObject,0);
		show_debug_message("New camera focus: " + cameraFocus.name + ". Active Object = " + activeObject.name);
	}


	if(activeObject == noone)
		activeObject = instance_find(obj_defaultActiveObject,0);
	else
	{
		if(activeObject.isCannon)
			activeObjectType = cannon;
		else if(activeObject.isSpaceship)
			activeObjectType = spaceship;
		else if(activeObject.isBody)
			activeObjectType = body;
	}
}
catch(_exception)
{
}