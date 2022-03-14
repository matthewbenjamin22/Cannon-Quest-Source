/* Calculates the current SOI of the object at xPos, yPos
*  Determines the currentAttractor to be the closest object to the caller, who's SOI contains the caller.
*  Returns an array consisting of [currentAttractor, distanceToAttractor]
*/
function calcSOI(xPos, yPos)
{
	instance = instance_nearest(xPos, yPos, obj_physicsObject);
	
	if(testMode)
	{
		show_debug_message("\nCalculating SOI for object " + string(instance.name));
		show_debug_message("There are currently " + string(instance_number(obj_gravityAttractorObject)) + " attractor objects.");
	}
	
	var smallestDistanceAttractor = obj_sun;
	var smallestDistance =  2147483647;//Max Value

	
	for(i = 0; i < instance_number(obj_gravityAttractorObject); i++)
	{
			
			var attractorI = instance_find(obj_gravityAttractorObject, i);
			var distanceI =  calcDistance(xPos,yPos,attractorI.x,attractorI.y);
			
			if(testMode)
				show_debug_message("-->Comparing against " + attractorI.name + " which is at distance " + string(distanceI) + " and has SOI = " + string(attractorI.soi));
			
			if((distanceI != 0) && (distanceI<attractorI.soi) && (distanceI < smallestDistance))
			{
				smallestDistanceAttractor = attractorI;
				smallestDistance = distanceI;
	
			}
	}
	
	if(smallestDistanceAttractor.name == instance.name)
	{
		if(testMode)
			show_debug_message("SOI cannot be set to self\n----------------------------------\n");
		returnMe = [noone, -1];
		return returnMe;
	}
	if(testMode)
		show_debug_message("Setting SOI to that of " + smallestDistanceAttractor.name + "\n----------------------------------\n");
	returnMe = [smallestDistanceAttractor, smallestDistance];
	return returnMe;
}