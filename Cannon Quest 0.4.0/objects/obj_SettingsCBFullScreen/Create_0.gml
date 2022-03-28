/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
//invertState = true;
state = fullscreen;
name = "Fullscreen";

if(!state)
	setHighlight(self,0);
else
	setHighlight(self,1);