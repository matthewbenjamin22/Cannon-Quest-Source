/// @description Keep State

// Inherit the parent event
event_inherited();

if(!invertState)
{
	if(state)
		setHighlight(self,0);
	else
		setHighlight(self,1);
}
else
{
	if(!state)
		setHighlight(self,0);
	else
		setHighlight(self,1);
}