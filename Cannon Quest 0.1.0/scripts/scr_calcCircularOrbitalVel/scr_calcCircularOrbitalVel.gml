//Returns the speed needed to maintain a perfectly circular orbit around attractor at given distance
function calcCircularOrbitalVel(attractor, distance)
{
	return sqr((G*attractor.mass)/distance)
}