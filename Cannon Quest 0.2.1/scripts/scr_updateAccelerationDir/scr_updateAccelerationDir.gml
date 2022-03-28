/* Calculates the acceleration to x and y,
*  based on the current position and attractor.
*  Then automatically updates the caller's speed with those values
*  Return void
*/
/*
function updateAccelerationDirArchive(inst)
{	
	var attractorDirection = point_direction(inst.x, inst.y, inst.currentAttractor.x, inst.currentAttractor.y);
	//var totalAcceleration = calcGrav(inst);
	var totalAcceleration = (G * inst.currentAttractor.mass) / (power(inst.distanceToAttractor,2));
	if(AccelerationTestMode)
		show_debug_message("-->Applying acceleration of " + string(totalAcceleration) + " to object " + inst.name + " in direction " + string(attractorDirection));
		
	inst.motion_add(attractorDirection, totalAcceleration);
}
*/
function calcAccelerationDir(inst)
{
	inst.attractorDirection = point_direction(inst.x,inst.y,inst.currentAttractor.x,inst.currentAttractor.y);
	inst.lastAcceleration = (G * inst.currentAttractor.mass) / (power(inst.distanceToAttractor,2));
}