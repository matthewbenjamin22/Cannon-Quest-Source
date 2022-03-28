// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function updateCannonPosition(inst)
{
	var parent = inst.parent;
	//Adding elevation to the planet radius allows the cannon base to sit on the surface
	//Subtracting 90 from the image angle allows the cannon to be situated roughly over Florida
	var xRelative = ((parent.radius+elevation) * sin(degtorad(parent.image_angle-90)));
	var yRelative = ((parent.radius+elevation) * cos(degtorad(parent.image_angle-90)));
	
	
	if(parent.image_angle > 0 && parent.image_angle < 90)//Quadrent 1
	{
		inst.x = parent.x + xRelative;
		inst.y = parent.y - yRelative;
	}
	else if (parent.image_angle > 90 && parent.image_angle < 180)//Quadrent 2
	{
		inst.x = parent.x - xRelative;
		inst.y = parent.y - yRelative;
	}
	else if (parent.image_angle > 180 && parent.image_angle < 270)//Quadrent 3
	{
		inst.x = parent.x - xRelative;
		inst.y = parent.y + yRelative;
	}	
	else//Quadrent 4
	{
		inst.x = parent.x + xRelative;
		inst.y = parent.y + yRelative;
	}
}