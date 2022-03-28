/* Calculates the acceleration to x and y,
*  based on the current position and attractor.
*  Then automatically updates the caller's speed with those values
*  Return void
*/
function updateAccelerationDir(inst)
{	
	var attractorDirection = point_direction(inst.x, inst.y, inst.currentAttractor.x, inst.currentAttractor.y);
	//var totalAcceleration = calcGrav(inst);
	var totalAcceleration = (G * inst.currentAttractor.mass) / (power(inst.distanceToAttractor,2));
	if(AccelerationTestMode)
		show_debug_message("-->Applying acceleration of " + string(totalAcceleration) + " to object " + inst.name + " in direction " + string(attractorDirection));
	if(totalAcceleration == 0)
		show_debug_message("I'm really a poop");
	
	inst.motion_add(attractorDirection, totalAcceleration);
}