//Fire the cannon!
function fireCannon(cannon)
{
	var ball = instance_create_layer(cannon.x,cannon.y,"Cannon_Layer_Base",obj_cannonball);
	
	
	ball.currentAttractor = cannon.planet;
	ball.direction = cannon.directionLock;
	ball.speed = fireSpeed;
	
	//ball.speed = ball.currentAttractor.speed;
	
	//var cannon = inst;
	//ball.motion_add(radtodeg(cannon.direction),fireSpeed);
	//show_debug_message("Adding speed " + string(fireSpeed) + " in direction " + string(cannon.direction) + " to " + ball.name);	
	
	
}

/*

	ball.currentAttractor = inst.parent;
	ball.direction = ball.currentAttractor.direction;
	ball.speed = ball.currentAttractor.speed;
	
	ball.motion_add(inst.direction, fireSpeed);


*/