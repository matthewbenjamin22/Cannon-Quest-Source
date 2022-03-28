/// @description Draw text

for(i = 0; i < instance_number(obj_SettingsCBGeneric); i++)
{
	
	var inst = instance_find(obj_SettingsCBGeneric,i);
	var scale = textScaleFactor * inst.scaleRate * camera_get_view_height(view_camera[0]);
	draw_text_ext_transformed(inst.x + (inst.sprite_width * 0.5) + textOffset, inst.y + inst.textYOffset, inst.name, 10, 45, scale, scale, 0);
}