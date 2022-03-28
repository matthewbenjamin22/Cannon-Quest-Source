/// @description Insert description here
// You can write your code in this editor
event_inherited();
name = "Cannonball";

incrementDist = 1;
incrementSpeed = 0.1;

updateSOI(self);
motion_add(currentAttractor.direction,currentAttractor.speed);
//motion_add(radtodeg(cannon.image_angle), fireSpeed);
printPOInfo(self);