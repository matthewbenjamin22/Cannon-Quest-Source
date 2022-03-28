/// @description Insert description here
// You can write your code in this editor
event_inherited();
isSpaceship = true;
name = "Spaceship " + string(cannonballNameIndex++);

incrementDist = 1;
incrementSpeed = 0.1;

updateSOI(self);
motion_add(currentAttractor.attractorDirection,currentAttractor.speed);
