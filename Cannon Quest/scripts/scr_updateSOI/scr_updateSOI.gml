/* Calculates the current SOI of parameter self
*  Then updates those values automatically for the caller.
*  Return void.
*/
function updateSOI(inst)
{
	
	//Do not run if there is only one or less objects
	//if(instance_number(obj_gravityAttractorObject) <= 1)
	//	return noone;
	
	
	if(SOITestMode)
	{
		show_debug_message("\nCalculating SOI for object " + string(inst.name));
		show_debug_message("There are currently " + string(instance_number(obj_gravityAttractorObject)) + " attractor objects.");
	}
	
	var smallestDistanceAttractor;
	//Default attractor is always the Sun, then the earth, then nobody.
	if(instance_count(obj_sun) > 0)
		smallestDistanceAttractor = instance_nearest(inst.x, inst.y, obj_sun);
	else if(instance_count(obj_earth) > 0)
		smallestDistanceAttractor = instance_nearest(inst.x, inst.y, obj_earth);
	else
		smallestDistanceAttractor = noone;
	var smallestDistance =  2147483647;//Max Value

	//Run through all other objects, check if they are correct
	for(i = 0; i < instance_number(obj_gravityAttractorObject); i++)
	{
			
			var attractorI = instance_find(obj_gravityAttractorObject, i);
			var distanceI =  calcDistance(inst.x,inst.y,attractorI.x,attractorI.y);
			
			if(SOITestMode)
				show_debug_message("-->Comparing against " + attractorI.name + " which is at distance " + string(distanceI) + " and has SOI = " + string(attractorI.soi));
			
			if((distanceI != 0) 
				&& (distanceI<attractorI.soi) && (distanceI < smallestDistance)
				&& (attractorI != inst)
				&& (attractorI.currentAttractor != inst))
			{
				smallestDistanceAttractor = attractorI;
				smallestDistance = distanceI;
	
			}
	}
	
	//Check to prevent object from entering it's own SOI
	if(smallestDistanceAttractor == inst)
	{
		if(SOITestMode)
			show_debug_message("SOI cannot be set to self\n----------------------------------\n");
		returnMe = [noone, -1];
		return returnMe;
	}
	if(SOITestMode)
		show_debug_message("Setting SOI to that of " + smallestDistanceAttractor.name + "\n----------------------------------\n");
	
	inst.currentAttractor = smallestDistanceAttractor;
}