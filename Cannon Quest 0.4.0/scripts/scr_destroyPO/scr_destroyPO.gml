/// @description - Destroys a Physics Object and any linked arrows, tracers, etc.

function destroyPO(PO)
{
	if(PO.isActive)
	{
		activeObject = instance_find(obj_defaultActiveObject,0);
		show_debug_message("DestroyPO: Active Object destroyed. New Active Object = " + activeObject.name);
	}
	
	if(cameraFocus == PO)
		cameraFocus = noone;
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

//Clears all tracers
function clearTracers()
{
	//Run this loop 6 times, because GML tends to miss some each time it runs due to step counts
	for(a = 0; a < 5; a++)
	{
		for(i = 0; i < instance_number(obj_tracerBall); i++)
		{
			instance_destroy(instance_find(obj_tracerBall,i));
		}
	}
}