/// @description Generic Checkbox Objects
// Inherit the parent event
state = showAtmospheres;
event_inherited();
invertState = true
name = "Show Atmo-\nspheres";
xOffset = 330;
yOffset = -10;
textYOffset = -3;


if(state)
	setHighlight(self,0);
else
	setHighlight(self,1);