/// @description Toggle Checkbox
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
state = !state;