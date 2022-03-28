/// @description Apply drag

var relativeSpeed = abs(currentAttractor.speed - speed);
if(relativeSpeed > 0.0)
{
	motion_add(direction,-0.1);
}
