/// @description Next Level


if(instance_number(obj_rm_Tutorial_1_Earth) == 1)//If we are in the first tutorial
{
	room_goto(rm_Tutorial_2_EarthMoon);
}
else if(instance_number(obj_rm_Tutorial_2_EarthMoon) == 1)
{
	room_goto(rm_Tutorial_3_Mars);
}