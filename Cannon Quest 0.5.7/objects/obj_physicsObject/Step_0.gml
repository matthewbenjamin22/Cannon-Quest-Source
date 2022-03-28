// @description Main operations for physics objects

if(paused) {}
else


//If out of bounds, delete the object
if(x == NaN || y == NaN)
{
	show_debug_message(name + " deleted.");
	instance_destroy();
}

stepCount++;//We count the current step using the data stepCount. This allows us to perform actions only on certain steps, like every nth step.

if(!lockSOI)
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
	
	if(currentAttractor.currentAttractor != noone)//Used for orbiting moons
	{
		var grandparentAttractor = currentAttractor.currentAttractor;
		motion_add(grandparentAttractor.attractorDirection,grandparentAttractor.lastAcceleration);//keep pace with grandparent
	}
}

//Now we will calculate if we are rising, or falling.
if(bool_isFalling && previousDistance < distanceToAttractor)
{
	instance_create_layer(x, y, "Tracer_Layer", obj_periapsisBall);//Create Tracer
	bool_isFalling = false;
	
}
else if( !(bool_isFalling) && (previousDistance > distanceToAttractor))
{
	instance_create_layer(x, y, "Tracer_Layer", obj_apoapsisBall);//Create Tracer
	bool_isFalling = true;
}

//Every 10 steps, we create a tracer
if(stepCount % 10 == 0)
{
	instance_create_layer(x, y, "Tracer_layer", obj_tracerBall);	
	if(infoTestMode)
		printPOInfo(self);
}

//Rotation
if(rotationRate != 0 && stepCount % rotationRate == 0 && !tidallyLocked)
	rotateObject(self);	//Rotate the planet
else if(tidallyLocked)
	tidallyLock(self);	

//We set a max stepCount to avoid overflow issues.
if(stepCount >= 1000)
	stepCount = 0;

