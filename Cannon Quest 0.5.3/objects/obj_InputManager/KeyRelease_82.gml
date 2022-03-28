/// @description Select ammo
//Key Up R

setHighlight(arrowButton,0);
try
{
	if(ammoType == cannonball)
	{
		ammoType = spaceship;
		setHighlight(arrowButton.nameIndicator,1);
		setHighlight(arrowButton.pictureIndicator,1);
	}
	else
	{
		ammoType = cannonball;
		setHighlight(arrowButton.nameIndicator,0);
		setHighlight(arrowButton.pictureIndicator,0);
	}
}