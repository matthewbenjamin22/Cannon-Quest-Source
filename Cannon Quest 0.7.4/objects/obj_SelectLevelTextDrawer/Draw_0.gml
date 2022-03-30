/// @description Draw text

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

for(i = 0; i < instance_number(obj_levelSelectGeneric); i++)
{
	
	var inst = instance_find(obj_levelSelectGeneric,i);
	//var scale = textScaleFactor * inst.scaleRate * camera_get_view_height(view_camera[0]);
	//draw_text_ext_transformed(inst.x + (inst.sprite_width * 0.5) + textOffset, inst.y + inst.textYOffset + textYOffsetModifier, inst.name, 15, 80, scale, scale, 0);
	
	draw_text_ext_transformed(inst.x,inst.y + inst.sprite_width/2 + textYOffsetModifier, inst.name, 20, 500, 1, 1, 0);
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);