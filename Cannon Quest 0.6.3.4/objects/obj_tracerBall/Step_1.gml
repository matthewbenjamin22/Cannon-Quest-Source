/// @description Deletes the ball under certain conditions, or tracks the creator's parent

try
{
	if(tracersDelete)
	{	ageCount++;
		if(ageCount >= maxAge)
			instance_destroy();
	}

	if(tracersFollow)
	{
		speed = attractor.speed;
		direction = attractor.direction;
	}

	if(attractor != creator.currentAttractor)//Destroy any tracer who's creator changes SOI
		instance_destroy();
}
//Occcasionally, the compiler optimizes the scr_destroyPO() function in such a way that it deletes the creator object before the rest of the game can catch up
//Because GML does not support atomicity (as far as I can tell), we have added this try/catch to avoid this issue
catch(_exception)
{
	//show_debug_message("Error in tracerBall step function: " + _exception.message);//This message commented out because honestly it occurs too much
	instance_destroy();	
}