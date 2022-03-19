//Returns the current gravitational acceleration on an object
function calcGrav(inst)
{
	return 0.0000000000001 + (G * inst.currentAttractor.mass) / (power(inst.distanceToAttractor,2)) - 0.0000000000001;
}