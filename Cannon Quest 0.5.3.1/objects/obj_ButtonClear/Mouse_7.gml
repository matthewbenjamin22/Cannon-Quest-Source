/// @description Clear Screen
setHighlight(self,1);

var numBalls = instance_number(obj_cannonball);
while(numBalls > 0)
{
	destroyPO(instance_find(obj_cannonball,0));
	numBalls = instance_number(obj_cannonball);
}
var numTracers = instance_number(obj_tracerBall);
while(numTracers > 0)
{
	destroyPO(instance_find(obj_tracerBall,0));
	numTracers = instance_number(obj_tracerBall);
}