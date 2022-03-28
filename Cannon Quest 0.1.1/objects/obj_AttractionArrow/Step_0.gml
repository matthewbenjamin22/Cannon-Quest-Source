/// @description Insert description here
// You can write your code in this editor

if(object.currentAttractor != noone)
{
	image_angle = point_direction(object.x,object.y,object.currentAttractor.x,object.currentAttractor.y) - 90;
	x = object.x;
	y = object.y;
}
else
{
	x = 0;
	y = 0;
}