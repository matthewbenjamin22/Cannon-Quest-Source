/// @description Move with camera - left side



var _viewH = camera_get_view_height(view_camera[0]);

var newx = camera_get_view_x(view_camera[0]) + (0.0005 * camera_get_view_height(view_camera[0])) + (xOffset*_viewH*scaleRate);
x = clamp(newx, newx + (bar.sprite_width/2) - 10, bar.x + (bar.sprite_width/2) - 5);
y = camera_get_view_y(view_camera[0]) + (0.0005 * camera_get_view_height(view_camera[0])) - (yOffset*_viewH*scaleRate);

image_xscale = scaleRate * camera_get_view_height(view_camera[0]);
image_yscale = scaleRate * camera_get_view_height(view_camera[0]);
