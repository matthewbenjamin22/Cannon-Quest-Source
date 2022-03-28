//Fire the cannon!
function fireCannon()
{
	var ball = instance_create_layer(activeCannon.x,activeCannon.y,"Cannon_Layer_Base",obj_cannonball);
	var clicker = instance_create_layer(activeCannon.x, activeCannon.y, "Cannon_Layer_Base", obj_CannonballClicker);
	clicker.linkedBall = ball;
	
	
	activeCannon.directionLock = activeCannon.direction;
	ball.currentAttractor = activeCannon.planet;
	
	ball.direction = activeCannon.directionLock;
	ball.speed = fireSpeed;
	
	activeCannon.direction = activeCannon.directionLock;
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
function cannonCW() { activeCannon.direction--; }

function cannonCCW() { activeCannon.direction++;}

function cannonUp()
{
	if(activeCannon.elevation < activeCannon.maxElevation)
		activeCannon.elevation++;
	updateCannonPosition(activeCannon);
}

function cannonDown()
{
	if(activeCannon.elevation > activeCannon.minElevation)
		activeCannon.elevation--;
	updateCannonPosition(activeCannon);
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