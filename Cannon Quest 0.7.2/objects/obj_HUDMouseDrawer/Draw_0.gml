//Draw Text at mouse
try
{
draw_set_color(c_white);
var scale = textScaleFactor * scaleRate * camera_get_view_height(view_camera[0]);
if(object = noone)
	draw_text_ext_transformed(mouse_x + textXOffset, mouse_y + textYOffset, text, 15, 80, scale, scale, 0);
else
	draw_text_ext_transformed(object.x + (object.sprite_width/2) + textXOffset, object.y + textYOffset, text, 15, 80, scale, scale, 0);
draw_set_color(c_white);
}
catch(_exception)
{
	//Do Nothing
}