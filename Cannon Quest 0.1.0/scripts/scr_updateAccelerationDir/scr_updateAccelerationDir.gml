/* Calculates the acceleration to x and y,
*  based on the current position and attractor.
*  Then automatically updates the caller's speed with those values
*  Return void
*/
function updateAccelerationDir(inst)
{	
	var attractorDirection = point_direction(inst.x, inst.y, inst.currentAttractor.x, inst.currentAttractor.y);
	var totalAcceleration = calcGrav(inst);
	inst.motion_add(attractorDirection, totalAcceleration);
}