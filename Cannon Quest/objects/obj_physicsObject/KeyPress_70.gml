/// @description Insert description here
// You can write your code in this editor

if(currentAttractor != noone)
{
	show_debug_message("Calculating gravitational acceleration for object" + name);
	output = [0,0];
	output = scr_calcAcceleration(currentAttractor, distanceToAttractor, x, y);
	show_debug_message("Updating speed with values by " + string(output[0]) + ", " + string(output[1]) + "\n");
	hspeed += output[0];
	vspeed += output[1];
}