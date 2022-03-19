/* Calculates the acceleration to x and y,
*  based on the current position and attractor.
*  Then automatically updates the caller's speed with those values
*  Return void
*/
function updateAcceleration(inst)
{
	
	
	//Compute the x and y distance from attractor
	var xDist = inst.currentAttractor.x - inst.x;
	var yDist = inst.currentAttractor.y - inst.y;
	
	//Calculate the percentage of totalDistance each x and y make.
	//xPercent = ((abs(xDist) * 100) / inst.distanceToAttractor) / 100; //Causes odd angle gravity
	var xPercent = (abs(xDist) / (abs(xDist) + abs(yDist))); //Causes us to move toward a circle
	
	
	var yPercent = 1-xPercent; //yPercent = ((yDist * 100) / inst.distanceToAttractor) / 100;


	
	//Calculate total gravitational acceleration
	var totalAcceleration = calcGrav(inst);
	
	if(AccelerationTestMode) show_debug_message("Acc: Object " + inst.name + " is distance " + string(xDist) + ", " + string(yDist) + " from attractor.\n\tCalculated distance is " + string(xPercent) + "% x, " + string(yPercent) + "% y\n\tTotal acceleration =  " + string(totalAcceleration));
	
	//Calculate signed xPercent and yPercent of totalAcceleration, then return as an array [xAccel, yAccel].
	if(xDist < 0)
		xPercent *= -1;
	if(yDist < 0)
		yPercent *= -1;
		
	
	if(AccelerationTestMode) show_debug_message("Acc: Increasing speed of object " + inst.name + " by " + string(xPercent * totalAcceleration) + ", " + string(yPercent * totalAcceleration));
	
	inst.hspeed += (xPercent * totalAcceleration);
	inst.vspeed += (yPercent * totalAcceleration);
}