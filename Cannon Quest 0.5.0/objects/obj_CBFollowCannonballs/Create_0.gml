/// @description Generic Checkbox Objects
// Inherit the parent event
state = followCannonballsWhenFired;
event_inherited();
name = "Follow Cannon-\nballs";
xOffset = 710;
yOffset = -10;
textYOffset = -3;

if(!state)
	setHighlight(self,0);
else
	setHighlight(self,1);