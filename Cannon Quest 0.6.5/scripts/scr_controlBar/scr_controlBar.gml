//All scripts related to the control bar
function toggleTracersFollow()
{
	tracersFollow = !(tracersFollow);
	clearTracers();//Defined under scr_destroyPO
}

function toggleFollowCannonballsWhenFired()
{
	followCannonballsWhenFired = !followCannonballsWhenFired;
}

function toggleShowArrows()
{
	showArrows = !showArrows;
}

function toggleShowAtmospheres()
{
	showAtmospheres = !showAtmospheres;
}

function togglePlanetsRotate()
{
	planetsRotate = !planetsRotate;
}