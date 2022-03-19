/// @description Insert description here
// You can write your code in this editor
image_angle = direction;

if(isMovingRight == 1)
{
	if(xTrace < parent.radius)	
		xTrace++;
	else
		isMovingRight = 0;
}
else
{
	if(xTrace > 0-parent.radius)
		xTrace--;
	else
		isMovingRight = 1;
}

if(isMovingDown == 1)
{
	if(yTrace < parent.radius)	
		yTrace++;
	else
		isMovingDown = 0;
}
else
{
	if(yTrace > 0-parent.radius)
		yTrace--;
	else
		isMovingDown = 1;
}


var xPercent = (xTrace / (xTrace+yTrace));
var yPercent = (yTrace / (xTrace+yTrace));

xTrace = xPercent * parent.radius;
yTrace = yPercent * parent.radius;

x = parent.x + xTrace;
y = parent.y + yTrace;


x = parent.x + (parent.radius/2) + 50;
y = parent.y - (parent.radius/2) - 50;