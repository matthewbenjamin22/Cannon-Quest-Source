/* Calculates the acceleration to x and y,
*  based on the current position and attractor.
*  Then automatically updates the caller's speed with those values
*  Return void
*/
function updateAcceleration(inst)
{
	
	
	//Compute the x and y distance from attractor
	xDist = inst.currentAttractor.x - inst.x;
	yDist = inst.currentAttractor.y - inst.y;
	
	//Calculate the percentage of totalDistance each x and y make.
	//xPercent = ((abs(xDist) * 100) / inst.distanceToAttractor) / 100; //Causes odd angle gravity
	xPercent = (abs(xDist) / (abs(xDist) + abs(yDist))); //Causes us to move toward a circle
	//xPercent = ( abs(xDist) / ( point_distance(inst.x,inst.y,inst.currentAttractor.x, inst.currentAttractor.y)));
	
	yPercent = 1-xPercent; //yPercent = ((yDist * 100) / inst.distanceToAttractor) / 100;


	
	//Calculate total gravitational acceleration
	totalAcceleration = calcGrav(inst);
	
	if(AccelerationTestMode) show_debug_message("Acc: Object " + inst.name + " is distance " + string(xDist) + ", " + string(yDist) + " from attractor.\n\tCalculated distance is " + string(xPercent) + "% x, " + string(yPercent) + "% y\n\tTotal acceleration =  " + string(totalAcceleration));
	
	//Calculate signed xPercent and yPercent of totalAcceleration, then return as an array [xAccel, yAccel].
	if(xDist < 0)
		xPercent *= -1;
	if(yDist < 0)
		yPercent *= -1;
		
	//Now we account for rounding errors
	//Objects tend to gain extra energy when falling and loose extra energy when rising.
	//We will account for this by, essentially, cheating physics
	//roundVal = 0.05;
	//if(inst.bool_isFalling) totalAcceleration -= (roundVal*totalAcceleration);
	//else					totalAcceleration += (roundVal*totalAcceleration);
		
	
	if(AccelerationTestMode) show_debug_message("Acc: Increasing speed of object " + inst.name + " by " + string(xPercent * totalAcceleration) + ", " + string(yPercent * totalAcceleration));
	
	inst.hspeed += (xPercent * totalAcceleration);
	inst.vspeed += (yPercent * totalAcceleration);
}


function updateAcceleration2(inst)
{
	var distance = point_distance(inst.x, inst.y, inst.currentAttractor.x, inst.currentAttractor.y);
	var force = G * inst.currentAttractor.mass / (distance * distance);
	var dist_X = (inst.currentAttractor.mass - 0) / distance;
	var dist_Y = (inst.currentAttractor.mass - 0) / distance;
	var velX = dist_X * force;
	var velY = dist_Y * force;
	inst.hspeed += velX;
	inst.vspeed += velY;
}