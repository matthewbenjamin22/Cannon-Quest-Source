//Set the type of object fired from the cannon
function setAmmo(type)
{
	if(type == cannonball)
		ammoType = cannonball;
	else if(type == spaceship)
		ammoType = spaceShip;
}

//Fire the cannon!
function fireCannon()
{

	if(!activeObject.isCannon)
		return;
	
	if(ammoType == cannonball)
		var ball = instance_create_layer(activeObject.x,activeObject.y,"Cannon_Layer_Base",obj_cannonball);
	else if(ammoType = spaceship)
		var ball = instance_create_layer(activeObject.x,activeObject.y,"Cannon_Layer_Base",obj_spaceship);
	var clicker = instance_create_layer(activeObject.x, activeObject.y, "Cannon_Layer_Base", obj_CannonballClicker);
	clicker.linkedBall = ball;
	
	
	activeObject.directionLock = activeObject.direction;
	ball.currentAttractor = activeObject.planet;
	
	ball.direction = activeObject.directionLock;
	ball.speed = fireSpeed;
	
	ball.image_angle = ball.direction;
	
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
	activeObject.direction--; 
}

function cannonCCW() 
{ 
	if(!activeObject.isCannon)
		return;
	activeObject.direction++;
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