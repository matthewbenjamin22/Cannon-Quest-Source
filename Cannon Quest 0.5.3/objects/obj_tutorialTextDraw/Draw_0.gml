/// @description Draw Text
draw_set_color(c_black);
							//draw_set_color(c_white);
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var scale = textScaleFactor * camera_get_view_height(view_camera[0]);
draw_text_ext_transformed(box.x, box.y + textYOffsetModifier, manager.text, 15, 350, scale, scale, 0);

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);