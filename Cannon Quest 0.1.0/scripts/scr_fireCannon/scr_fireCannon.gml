// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fireCannon(inst)
{
	var ball = instance_create_layer(inst.x,inst.y,"Cannon_Layer_Base",obj_cannonball);
	ball.direction = inst.direction;
	ball.speed = fireSpeed;
	ball.motion_add(inst.parent.direction, inst.parent.speed);
	updateSOI(ball);
	updateAccelerationDir(ball);
}


/*

	ball.currentAttractor = inst.parent;
	ball.direction = ball.currentAttractor.direction;
	ball.speed = ball.currentAttractor.speed;
	
	ball.motion_add(inst.direction, fireSpeed);


*/