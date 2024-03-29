/// @description - Destroys a Physics Object and any linked arrows, tracers, etc.

function destroyPO(PO)
{
	instance_destroy(PO.directionArrow);
	instance_destroy(PO.attractionArrow);
	
	
	var numTracers = instance_number(obj_tracerBall);
	for(i = 0; i < numTracers; i++)
	{
		var tracer = instance_find(obj_tracerBall,i);
		try
		{
			if(tracer.creator == noone || tracer.creator == PO)
				instance_destroy(tracer);
		}
		//Occcasionally, the compiler optimizes the scr_destroyPO() function in such a way that it deletes the creator object before the rest of the game can catch up
		//Because GML does not support atomicity (as far as I can tell), we have added this try/catch to avoid this issue
		catch(_exception)
		{
			show_debug_message("Error in scr_destroyPO() tracer catch:" + _exception.message);
			instance_destroy(tracer);	
		}
	}
	instance_destroy(PO);
}