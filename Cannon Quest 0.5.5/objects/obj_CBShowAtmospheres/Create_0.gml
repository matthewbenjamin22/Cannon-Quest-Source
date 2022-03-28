/// @description Generic Checkbox Objects
// Inherit the parent event
state = showAtmospheres;
event_inherited();
invertState = false;
name = "Show Atmospheres";
xOffset = -70;
yOffset = -10;
textYOffset = 0;



if(state)
	setHighlight(self,0);
else
	setHighlight(self,1);