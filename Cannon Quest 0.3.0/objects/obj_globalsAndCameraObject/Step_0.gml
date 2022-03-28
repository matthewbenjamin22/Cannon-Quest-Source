/// @description Camera Controls
//show_debug_message("Mouse position (x,y) = " + string(mouse_x) + ", " + string(mouse_y));
zoomCamera(mouse_wheel_down() - mouse_wheel_up());//Zooms the camera in and out using the mouse wheel


if(activeObject == noone)
{
	activeObject = instance_find(obj_defaultActiveObject,0);
	show_debug_message("New camera focus: " + cameraFocus.name + ". Active Object = " + activeObject.name);
}