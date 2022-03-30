/// @description - Destroys a Physics Object and any linked arrows, tracers, etc.

function destroyPO(PO)
{
	try
	{
		if(PO.isActive)
		{
			activeObject = instance_find(obj_defaultActiveObject,0);
			show_debug_message("DestroyPO: Active Object destroyed. New Active Object = " + activeObject.name);
		}
	}
	catch(_exception)//Incorrect Reference
	{
		instance_destroy(PO);
		return;
	}

	PO.name = "";

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
	
	var numClickers = instance_number(obj_CannonballClicker);
	for(i = 0; i < numClickers; i++)
	{
		try
		{
			var clicker = instance_find(obj_CannonballClicker,i);
			if(clicker.linkedObject == noone || clicker.linkedObject == PO)
			{
				instance_destroy(clicker);
			}
		}
		catch(_exception) {}//Do Nothing
	}
	
	instance_destroy(PO);
}

//Clears all tracers
function clearTracers()
{
	var numTracers = instance_number(obj_tracerBall);
	while(numTracers > 0)
	{
		destroyPO(instance_find(obj_tracerBall,0));
		numTracers = instance_number(obj_tracerBall);
	}
	
	return;	
}