/// @description Draw text


/*
var xscale = scaleRate * camera_get_view_height(view_camera[0])
var textScale = xscale * 3;
draw_text_ext_transformed(x,y,"Tracers Follow",3,300,textScale,textScale,0);
*/
//draw_text_ext(x, y, "Tracers Follow", 3, 300);
//draw_sprite_ext( spr_checkBox, 0, x, y, xscale, yscale, 0, c_white, 1);

for(i = 0; i < instance_number(obj_CBGeneric); i++)
{
	
	var inst = instance_find(obj_CBGeneric,i);
	var scale = textScaleFactor * inst.scaleRate * camera_get_view_height(view_camera[0]);
	draw_text_ext_transformed(inst.x + (inst.sprite_width * 0.5) + textOffset, inst.y + inst.textYOffset + textYOffsetModifier, inst.name, 15, 80, scale, scale, 0);
}