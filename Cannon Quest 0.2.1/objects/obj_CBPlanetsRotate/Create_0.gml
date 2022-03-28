/// @description Generic Checkbox Objects
// Inherit the parent event
state = showAtmospheres;
event_inherited();
invertState = true
name = "Planets Rotate";
xOffset = 115;
yOffset = -10;


if(state)
	setHighlight(self,0);
else
	setHighlight(self,1);