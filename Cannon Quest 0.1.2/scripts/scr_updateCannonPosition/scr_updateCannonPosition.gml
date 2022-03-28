// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function updateCannonPosition(inst)
{
	var planet = inst.planet;
	//Adding elevation to the planet radius allows the cannon base to sit on the surface
	//Subtracting 90 from the image angle allows the cannon to be situated roughly over Florida
	var xRelative = ((planet.radius+elevation) * sin(degtorad(planet.image_angle-90)));
	var yRelative = ((planet.radius+elevation) * cos(degtorad(planet.image_angle-90)));
	
	
	if(planet.image_angle > 0 && planet.image_angle < 90)//Quadrent 1
	{
		inst.x = planet.x + xRelative;
		inst.y = planet.y - yRelative;
	}
	else if (planet.image_angle > 90 && planet.image_angle < 180)//Quadrent 2
	{
		inst.x = planet.x - xRelative;
		inst.y = planet.y - yRelative;
	}
	else if (planet.image_angle > 180 && planet.image_angle < 270)//Quadrent 3
	{
		inst.x = planet.x - xRelative;
		inst.y = planet.y + yRelative;
	}	
	else//Quadrent 4
	{
		inst.x = planet.x + xRelative;
		inst.y = planet.y + yRelative;
	}
}