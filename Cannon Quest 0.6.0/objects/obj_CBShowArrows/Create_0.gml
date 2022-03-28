/// @description Generic Checkbox Objects
// Inherit the parent event
state = showArrows;
event_inherited();
name = "Show Arrows";
xOffset = 200;
yOffset = -10;
textYOffset = 0;

invertState = true;
if(!state)
	setHighlight(self,0);
else
	setHighlight(self,1);