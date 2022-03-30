/// @description Generic Checkbox Objects
// Inherit the parent event
state = followCannonballsWhenFired;
event_inherited();
name = "Follow Cannonballs";
xOffset = 600;
yOffset = -10;
textYOffset = 0;
invertState = true;
if(!state)
	setHighlight(self,0);
else
	setHighlight(self,1);