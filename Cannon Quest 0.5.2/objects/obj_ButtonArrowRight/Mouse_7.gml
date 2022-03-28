/// @description Use
setHighlight(self,1);
if(ammoType == cannonball)
{
	ammoType = spaceship;
	setHighlight(nameIndicator,1);
	setHighlight(pictureIndicator,1);
}
else
{
	ammoType = cannonball;
	setHighlight(nameIndicator,0);
	setHighlight(pictureIndicator,0);
}