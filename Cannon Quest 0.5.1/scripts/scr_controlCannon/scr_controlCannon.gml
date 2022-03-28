//Set the type of object fired from the cannon
function setAmmo(type)
{
	if(type == cannonball)
		ammoType = cannonball;
	else if(type == spaceship)
		ammoType = spaceship;
}


//Fires the cannon!
function fireCannon()
{

	if(!activeObject.isCannon)
		return;
	
	activeObject.directionLock = activeObject.direction;
	
	var xPos = activeObject.planet.x + ((activeObject.planet.radius+activeObject.elevation) * sin(degtorad(activeObject.planet.image_angle-91)));
	var yPos = activeObject.planet.y + ((activeObject.planet.radius+activeObject.elevation) * cos(degtorad(activeObject.planet.image_angle-91)));
	
	if(ammoType == cannonball)
		var ball = instance_create_layer(xPos,yPos,"Cannon_Layer_Base",obj_cannonball);
	else if(ammoType = spaceship)
		var ball = instance_create_layer(activeObject.x,activeObject.y,"Cannon_Layer_Base",obj_spaceship);
	
	ball.createCannonball(activeObject);

	activeObject.direction = activeObject.directionLock;
	if(followCannonballsWhenFired)
		focusCamera(ball);
}

function toggleLockCannon()
{
	if(lockCannon)
		lockCannon = false;
	else
		lockCannon = true;
}

//Direction Controls
function cannonCW() 
{ 
	if(!activeObject.isCannon)
		return;
	activeObject.direction -= turnRate; 
}

function cannonCCW() 
{ 
	if(!activeObject.isCannon)
		return;
	activeObject.direction += turnRate;
}

function cannonUp()
{
	if(!activeObject.isCannon)
		return;
	if(activeObject.elevation < activeObject.maxElevation)
		activeObject.elevation++;
	updateCannonPosition(activeObject);
}

function cannonDown()
{
	if(!activeObject.isCannon)
		return;
	if(activeObject.elevation > activeObject.minElevation)
		activeObject.elevation--;
	updateCannonPosition(activeObject);
}

function increaseFireSpeed()
{
	if(fireSpeed < maxFireSpeed)
		fireSpeed += 0.5;
	
	updateSpeedIndicator();
}

function decreaseFireSpeed()
{
	if(fireSpeed > minFireSpeed)
		fireSpeed -= 0.5;
	
	updateSpeedIndicator();
}

function updateSpeedIndicator()
{
	var values = [0,0,0];
	
	if(fireSpeed == 10)
	{
		values[0] = 1;
	}
	else if(fireSpeed != 0)
	{
		var spd = fireSpeed * 10;
		var d3 = spd mod 10;
		
		var d2 = (spd mod 100);
		d2 /= 10;
		values[2] = d3;
		values[1] = d2;
	}
	
	setHighlight(obj_Numerical_1, values[0]);
	setHighlight(obj_Numerical_2, values[1]);
	setHighlight(obj_Numerical_3, values[2]);
	setHighlight(obj_Numerical_Dec, 10);
	
}