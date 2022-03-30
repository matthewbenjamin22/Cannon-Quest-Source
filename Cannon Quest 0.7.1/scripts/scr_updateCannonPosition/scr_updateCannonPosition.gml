//Keeps planet in place on the surface
function updateCannonPosition(inst)
{
	try
	{
	var planet = inst.planet;
	var elevation = inst.elevation;
	//Adding elevation to the planet radius allows the cannon base to sit on the surface
	//Subtracting 90 from the image angle allows the cannon to be situated roughly over Florida
	var xRelative = ((planet.radius+elevation) * sin(degtorad(planet.image_angle-90)));
	var yRelative = ((planet.radius+elevation) * cos(degtorad(planet.image_angle-90)));
	
	inst.x = planet.x + xRelative;
	inst.y = planet.y + yRelative;
	}
	catch(_exception)
	{
		activeObject = obj_defaultActiveObject;
	}
	return;
	
	
	//Additional code is archived because I'm proud of it
	/*
	if(planet.image_angle > 0 && planet.image_angle < 90)//Quadrent 1
	{
		show_debug_message("Quadrent 1");
		inst.x = planet.x + xRelative;
		inst.y = planet.y - yRelative;
	}
	else if (planet.image_angle > 90 && planet.image_angle < 180)//Quadrent 2
	{
		show_debug_message("Quadrent 2");
		inst.x = planet.x - xRelative;
		inst.y = planet.y - yRelative;
	}
	else if (planet.image_angle > 180 && planet.image_angle < 270)//Quadrent 3
	{
		show_debug_message("Quadrent 3");
		inst.x = planet.x - xRelative;
		inst.y = planet.y + yRelative;
	}	
	else//Quadrent 4
	{
		show_debug_message("Quadrent 4");
		inst.x = planet.x + xRelative;
		inst.y = planet.y + yRelative;
	}
	*/
}