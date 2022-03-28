//Fire the cannon!
function fireCannon(cannon)
{
	var ball = instance_create_layer(cannon.x,cannon.y,"Cannon_Layer_Base",obj_cannonball);
	
	
	ball.currentAttractor = cannon.planet;
	ball.direction = cannon.directionLock;
	ball.speed = fireSpeed;
	
	
}

/*

	ball.currentAttractor = inst.parent;
	ball.direction = ball.currentAttractor.direction;
	ball.speed = ball.currentAttractor.speed;
	
	ball.motion_add(inst.direction, fireSpeed);


*/