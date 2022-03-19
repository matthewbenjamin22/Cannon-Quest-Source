/// @description Create Cannon
// You can write your code in this editor

parent = instance_nearest(x,y,obj_earth);
x = parent.x;// + 128;
y = parent.y - 128 - 14;

xTrace = 0;
yTrace = 0-parent.radius;

isMovingRight = 1;
isMovingDown = 1;