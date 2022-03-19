// @description Main operations for physics objects


if(x == NaN || y == NaN)
{
	show_debug_message(name + " deleted.");
	instance_destroy();
}



if(paused)
{
	//Do nothing if the sim is paused
}
else
{
	
	//Each step, we update the objects speed
	if(currentAttractor != noone)
	{
		updateAcceleration(self);	
	}
	
	image_angle -= rotationRate;//Rotate
	
	//We track the current step using the counter stepCount.
	//We trigger certain events only at certain intervals, to save resources.
	stepCount++;//Increments on each step

	
	//Every 10th step, we update the SOI and distance to attractor
	//We then create a tracer ball at our current position and reset the counter.
	if(stepCount >= 10)
	{
		instance_create_layer(x, y, "Tracer_Layer", obj_tracerBall);//Create Tracer
		previousDistance = distanceToAttractor;//Log previous distance before updating
		
		//Now we will calculate if we are rising, or falling
		if(bool_isFalling && previousDistance < distanceToAttractor)
		{
			instance_create_layer(x, y, "Tracer_Layer", obj_tracerPeriapsis);//Create Tracer
			show_debug_message("Periapsis:");
			bool_isFalling = 0;
			printPOInfo(self);
		}
		else if( !(bool_isFalling) && (previousDistance > distanceToAttractor))
		{
			instance_create_layer(x, y, "Tracer_Layer", obj_tracerApoapsis);//Create Tracer
			show_debug_message("Apoapsis:");
			bool_isFalling = 1;
			printPOInfo(self);
		}
		
		updateSOI(self);//Update SOI
		if(currentAttractor != noone)
			distanceToAttractor = calcDistance(x, y, currentAttractor.x, currentAttractor.y);//Update altitude
		
		//If infoTestMode is enabled in obj_observer, we print info about the PO to console.
		if(infoTestMode)
			printPOInfo(self);
		
		stepCount = 0;//Reset step counter
	}
}