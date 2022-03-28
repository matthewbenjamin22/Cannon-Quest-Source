//Debug script to print information about a physicsObject to console
function printPOInfo(inst)
{
	show_debug_message("Showing information for " + inst.name + " at position " + string(inst.x) + ", " + string(inst.y));
	show_debug_message("Velocity (u/t): " + string(abs(inst.hspeed)+abs(inst.vspeed)) + ". Splits (x,y): "  + string(inst.hspeed) + ", " + string(inst.vspeed));
	
	if(currentAttractor != noone)
	{
		//var velocity = abs(inst.hspeed)+abs(inst.vspeed);
		//var kinetic = (0.5) * power(velocity, 2);
		//var potential = calcGrav(inst) * inst.distanceToAttractor;
		//show_debug_message("Total Energy: " + string(kinetic+potential) + ". Kinetic = " + string(kinetic) + ", Potential = " + string(potential));
	
		show_debug_message("Current attractor: " + inst.currentAttractor.name + " at position " + string(inst.currentAttractor.x) + ", " + string(inst.currentAttractor.y) + ". Distance (m) = " + string(distanceToAttractor) + ". Mass = " + string(inst.currentAttractor.mass));
	}
	else
	{
		show_debug_message("Object has no attractor.");
	}
	show_debug_message("\n");
}