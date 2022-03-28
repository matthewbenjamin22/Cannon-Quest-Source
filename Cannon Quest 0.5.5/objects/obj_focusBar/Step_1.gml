/// @description Move with camera - left side



var _viewH = camera_get_view_height(view_camera[0]);
//var _newH = clamp(_viewH, 0, room_height);
//var _newW = _newH * (xResolution / yResolution);

x = camera_get_view_x(view_camera[0]) + (0.0005 * camera_get_view_height(view_camera[0])) - (xOffset*_viewH*scaleRate);
y = camera_get_view_y(view_camera[0]) + (0.0005 * camera_get_view_height(view_camera[0])) - (yOffset*_viewH*scaleRate);

image_xscale = scaleRate * camera_get_view_height(view_camera[0]);
image_yscale = scaleRate * camera_get_view_height(view_camera[0]);
