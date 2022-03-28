/// @description Generic Checkbox Objects
// Inherit the parent event
state = showArrows;
event_inherited();
name = "Show Vector Arrows";
xOffset = 510;
yOffset = -10;
textYOffset = -3;


if(!state)
	setHighlight(self,0);
else
	setHighlight(self,1);