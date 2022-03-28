/// @description Generic Checkbox Objects
// Inherit the parent event
event_inherited();
textYOffset = 0;
state = false;
invertState = false;
if(state)
	setHighlight(self,0);
else
	setHighlight(self,1);