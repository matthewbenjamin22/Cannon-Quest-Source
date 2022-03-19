//Calculates the distance between two objects
// The standard unit for this game, 1km, is 1000x the gamemaker pixel unit.
//Thus, all calculations are multiplied by 1000.
function calcDistance(x1, y1, x2, y2)
{
	return point_distance(x1, y1, x2, y2);
	/*
	var xSqur = (x2-x1)*(x2-x1);
	var ySqur = (y2-y1)*(y2-y1);
	return sqrt(xSqur+ySqur);
	*/
}
