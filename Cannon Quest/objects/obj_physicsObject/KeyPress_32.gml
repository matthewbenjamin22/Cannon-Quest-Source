/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
show_debug_message("\nShowing information for " + name + " at position " + string(x) + ", " + string(y));
if(currentAttractor != noone)
{
	show_debug_message("Current attractor: " + currentAttractor.name);
	distanceToAttractor = calcDistance(x, y, currentAttractor.x, currentAttractor.y);
	show_debug_message("Position of attractor: " + string(currentAttractor.x) + ", " + string(currentAttractor.y) + ". Distance = " + string(distanceToAttractor));
}
else
{
	show_debug_message("Object has no attractor.");
}
