/// @description Animations

// Inherit the parent event
event_inherited();

if(engineOn)
{
	if(CWOn)
	{
		if(CCWOn)
			image_index = 4;//All Engines on
		else
			image_index = 3;//Main Engine+CW RCS
	}
	else
	{
		if(CCWOn)
			image_index = 2;//Main Engine+CCW RCS
		else
			image_index = 1;//Main Engine Only
	}
}
else
{
	if(CWOn)
	{
		if(CCWOn)
			image_index = 5;//RCS CW+CCW
		else
			image_index = 7;//CW RCS
	}
	else
	{
		if(CCWOn)
			image_index = 6;//Main Engine+CCW RCS
		else
			image_index = 0;//No Engines
	}
}
	