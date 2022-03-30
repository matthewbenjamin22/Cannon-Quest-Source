/// @description Insert description here
// You can write your code in this editor

if(showArrows && object.speed != 0)
{	
	visible = true;
	image_angle = object.direction - 90;
	if(object.currentAttractor != noone)
		image_angle += object.currentAttractor.direction;
	x = object.x;
	y = object.y;
}
else
{
	visible = false;
}