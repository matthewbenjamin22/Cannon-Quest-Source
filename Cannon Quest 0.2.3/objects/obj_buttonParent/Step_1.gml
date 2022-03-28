/// @description Insert description here
// You can write your code in this editor


//var zoomDir = mouse_wheel_down() - mouse_wheel_up();
var _viewH = camera_get_view_height(view_camera[0]);
//var _factor = 0.2;

//var localZoomFactor = clamp(zoomFactor + (zoomDir * _factor), _factor, maxZoom);	
//var _lerpH = lerp(_viewH, zoomFactor * yResolution, _factor);//Parameters: from, to, zoom smoothness.
//var _newH = clamp(_lerpH, 0, room_height);
var _newH = clamp(_viewH, 0, room_height);
var _newW = _newH * (xResolution / yResolution);

x = camera_get_view_x(view_camera[0]) + _newW - (0.0005 * camera_get_view_height(view_camera[0])) - sprite_width - (xOffset*_viewH*scaleRate);
y = camera_get_view_y(view_camera[0]) + _newH - (0.0005 * camera_get_view_height(view_camera[0])) - sprite_height - (yOffset*_viewH*scaleRate);

image_xscale = scaleRate * camera_get_view_height(view_camera[0]);
image_yscale = scaleRate * camera_get_view_height(view_camera[0]);

//x=camera_get_view_x(view_camera[0]) + (camera_get_view_height(view_camera[0])/2);
//y=camera_get_view_y(view_camera[0])+ (camera_get_view_height(view_camera[0])/2);