//Returns gravitational Acceleration at a distance
function calcGravArchive(currentAttractor, distanceToAttractor)
{
	if(GravTestMode)
		show_debug_message("\t\tcurrentAttractor mass = " + string(currentAttractor.mass) + ". Distance = " + string(distanceToAttractor));
	acceleration = (G * currentAttractor.mass) / (power(distanceToAttractor,2));
	if(GravTestMode)
	{
		show_debug_message("\t\t\t(" + string(G) + " * currentAttractor.mass) = " + string((G * currentAttractor.mass)));
		show_debug_message("\t\t\tpower(distanceToAttractor,2) = " + string(power(distanceToAttractor,2)));	
		show_debug_message("\t\tAcceleration = " + string(acceleration));
	}
	return acceleration;
}