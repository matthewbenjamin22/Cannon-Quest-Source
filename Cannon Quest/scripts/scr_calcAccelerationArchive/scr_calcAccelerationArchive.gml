/* Calculates the acceleration to x and y,
*  based on the current position and attractor.
*  Return array [xAccel,yAccel]
*/
function calcAccelerationArchive(currentAttractor, distanceToAttractor, xPos, yPos)
{
	//Compute the x and y distance from attractor
	xDist = currentAttractor.x - xPos;
	yDist = currentAttractor.y - yPos;
	
	//Calculate the percentage of totalDistance each x and y make.
	xPercent = ((abs(xDist) * 100) / distanceToAttractor) / 100;
	yPercent = 1-xPercent; //yPercent = ((yDist * 100) / distanceToAttractor) / 100;
	if(AccelerationTestMode)
		show_debug_message("\txPercent: " + string(xPercent) + ". yPercent = " + string(yPercent));
	
	
	//Calculate total gravitational acceleration
	totalAcceleration = calcGrav(currentAttractor, distanceToAttractor);
	
	if(AccelerationTestMode)
		show_debug_message("\tTotal Acceleration = " + string(totalAcceleration));
	
	//Calculate xPercent and yPercent of totalAcceleration, then return as an array
	//Return array [xAccel, yAccel]
	
	if(xDist < 0)
		xPercent *= -1;
	if(yDist < 0)
		yPercent *= -1;
	
	return [xPercent * totalAcceleration, yPercent * totalAcceleration];
}