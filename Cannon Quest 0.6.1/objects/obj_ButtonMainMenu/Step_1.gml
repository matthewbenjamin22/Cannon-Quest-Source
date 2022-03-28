/// @description Lock GUI position,  top right

if(visible)
{
	var _viewH = camera_get_view_height(view_camera[0]);
	var _newH = clamp(_viewH, 0, room_height);
	var _newW = _newH * (xResolution / yResolution);
	x = camera_get_view_x(view_camera[0]) + _newW - (0.0005 * camera_get_view_height(view_camera[0])) - sprite_width - (xOffset*_viewH*scaleRate);
	y = camera_get_view_y(view_camera[0])  + 0 - (0.0005 * camera_get_view_height(view_camera[0])) + sprite_height - (yOffset*_viewH*scaleRate);
	image_xscale = scaleRate * camera_get_view_height(view_camera[0]);
	image_yscale = scaleRate * camera_get_view_height(view_camera[0]);
}
else
{
	x = 0;
	y = 0;
}