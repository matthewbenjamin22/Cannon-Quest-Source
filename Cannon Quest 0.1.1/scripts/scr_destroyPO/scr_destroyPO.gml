function destroyPO(PO)
{
	instance_destroy(PO.directionArrow);
	instance_destroy(PO.attractionArrow);
	instance_destroy(PO);
}