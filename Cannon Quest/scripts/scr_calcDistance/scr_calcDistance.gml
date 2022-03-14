// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function calcDistance(x1, y1, x2, y2)
{
	var xSqur = (x2-x1)*(x2-x1);
	var ySqur = (y2-y1)*(y2-y1);
	return sqrt(xSqur+ySqur);
}
