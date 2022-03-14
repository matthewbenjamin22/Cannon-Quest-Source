/// @description Calculates SOI, Distance, etc.





//After every 10 steps, we want to update the SOI.
//We only perform this after every 10 steps to save resources, as SOI changes are rarer events.
stepCheck++;
if(stepCheck >= 10)
{
	output = [noone, -1];
	output = calcSOI(x, y);
	currentAttractor = output[0];
	distanceToAttractor = output[1];
	stepCheck = 0;
}