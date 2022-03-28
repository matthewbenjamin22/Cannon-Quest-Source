/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
//invertState = true;
state = fullscreen;
name = "Fullscreen";
scaleRate = 0.001;
image_xscale = 0.5;
image_yscale = 0.5;

if(!state)
	setHighlight(self,0);
else
	setHighlight(self,1);