/// @description Insert description here
// You can write your code in this editor
try
{
	if(linkedBall == noone)
		instance_destroy();
	x = linkedBall.x;
	y = linkedBall.y;
}
catch(_exception)
{
	instance_destroy();
}