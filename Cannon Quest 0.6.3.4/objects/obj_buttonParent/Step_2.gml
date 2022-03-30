/// @description Hide if not in the right state


if(activeObjectType == body)
{
	if(!(activeIfBody))
		visible = false;
	else
		visible = true;
}
else if(activeObjectType == cannon)
{
	if(!(activeIfCannon))
		visible = false;
	else
		visible = true;
}
else if(activeObjectType == spaceship)
{
	if(!(activeIfSpaceship))
		visible = false;
	else
		visible = true;
}

if(invisibleOverride)
	visible = false;