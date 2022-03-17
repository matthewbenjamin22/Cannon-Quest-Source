//Returns the current gravitational acceleration on an object
function calcGrav(inst)
{
	return 0.000000000000 + (G * inst.currentAttractor.mass) / (power(inst.distanceToAttractor,2));
}