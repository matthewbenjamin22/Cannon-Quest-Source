// @description Main operations for physics objects

//If out of bounds, delete the object
if(x == NaN || y == NaN)
{
	show_debug_message(name + " deleted.");
	instance_destroy();
}

//We count the current step using the data stepCount.
//This allows us to perform actions only on certain steps, like every nth step.
stepCount++;

updateSOI(self);//Check the current SOI

//Each Step, we update the "altitude," the distance from Attractor
if(currentAttractor != noone)
{
	previousDistance = distanceToAttractor;
	distanceToAttractor = calcDistance(x, y, currentAttractor.x, currentAttractor.y);//Update altitude
}

//Each step, we update the object speed
if(currentAttractor != noone)
{
	calcAccelerationDir(self);
	motion_add(currentAttractor.attractorDirection,currentAttractor.lastAcceleration);//Keep pace with attractor
	motion_add(attractorDirection,lastAcceleration);//Update acceleration relative to attractor
}

//Now we will calculate if we are rising, or falling.
//We update the velocity to the saved values to avoid rounding losses
if(bool_isFalling && previousDistance < distanceToAttractor)
{
	var tracer = instance_create_layer(x, y, "Tracer_Layer", obj_periapsisBall);//Create Tracer
	//tracer.creator = self;
	bool_isFalling = 0;
	
}
else if( !(bool_isFalling) && (previousDistance > distanceToAttractor))
{
	var tracer = instance_create_layer(x, y, "Tracer_Layer", obj_apoapsisBall);//Create Tracer
	//tracer.creator = self;
	bool_isFalling = 1;
}

if(stepCount % 10 == 0)
{
	//Every 10 steps, we create a tracer
	var tracer = instance_create_layer(x, y, "Tracer_layer", obj_tracerBall);
	//tracer.creator = self;
	
	if(infoTestMode)
		printPOInfo(self);
}

if(rotationRate != 0 && stepCount % rotationRate == 0)
{
	rotateObject(self);	
}

//We set a max stepCount to avoid overflow issues.
if(stepCount >= 1000)
{
	stepCount = 0;
}

