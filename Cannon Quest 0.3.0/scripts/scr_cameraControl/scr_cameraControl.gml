//All Camera contol functions, in one place		



function setResolution(setup)
{
	//Available Resolutions:
	//1 - 1280x720
	//2 - 1366x786
	//3 - 1440x900	
	//4 - 1536x864
	//5 - 1920x1080 (Matthew's Computer)
	switch(setup)
	{
		case 1:
			xResolution = 1280;
			yResolution = 720;
			break;
		case 2:
			xResolution = 1366;
			yResolution = 786;
			break;
		case 3:
			xResolution = 1440;
			yResolution = 900;
			break;
		case 4:
			xResolution = 1536;
			yResolution = 846;
			break;
		case 5:
			xResolution = 1920;
			yResolution = 1080;
			break;
		case 6:
			xResolution = 960;
			yResolution = 540;
	}
}

function toggleFullScreen()
{
	if(fullscreen)
		fullscreen = false;
	else
		fullscreen = true;
	window_set_fullscreen(fullscreen);
}

function setupCamera()
{
	//Initialize Viewport
	view_enabled = true;
	view_visible[0] = true;
	
	//Enable viewport
	view_xport[0] = 0;
	view_yport[0] = 0;
	view_wport[0] = xResolution;
	view_hport[0] = yResolution;
	
	//Create camera view
	//view_camera[0] = camera_create_view(0, 0, view_wport[0], view_hport[0], 0, focus, -1, -1, xResolution/2 - 10, yResolution/2 - 5);
	view_camera[0] = camera_create_view(0, 0, view_wport[0], view_hport[0], 0, noone, -1, -1, xResolution, yResolution);

	//Setup Window size
	var _dwidth = display_get_width();
	var _dheight = display_get_height();
	var _xpos = (_dwidth / 2) - 480;
	var _ypos = (_dheight / 2) - 270;
	window_set_rectangle(_xpos, _ypos, xResolution, yResolution);
	
	//Size app screen
	surface_resize(application_surface, xResolution, yResolution);
}

function focusCamera(focus)
{
	
	if(activeObject != noone)
		activeObject.isActive = false;
	
	cameraFocus = focus;
	
	if(cameraFocus.isCannon)
	{
		activeObject = cameraFocus;
		show_debug_message("New camera focus is type cannon");
	}
	else if(cameraFocus.isSpaceship)
	{
		show_debug_message("New camera focus is type spaceship");
		activeObject = cameraFocus;
	}
	else if(cameraFocus.isBody && cameraFocus.linkedCannon != noone)
	{
		show_debug_message("New camera focus is type body which is parent of cannon");
		activeObject = cameraFocus.linkedCannon;
	}
	else
	{
		activeObject = obj_defaultActiveObject;
	}
	
	activeObject.isActive = true;
	
	show_debug_message("Focus Camera: New camera focus: " + cameraFocus.name + ". Active Object = " + activeObject.name);
	
	view_camera[0] = camera_create_view(0, 0, view_wport[0], view_hport[0], 0, focus, -1, -1, xResolution, yResolution);
}

function zoomCamera(zoomDir)
{

	var _viewH = camera_get_view_height(view_camera[0]);
	var _factor = 0.2;
	var minZoomMultiplier = 5;//The smaller this value, the closer we can zoom

	zoomFactor = clamp(zoomFactor + (zoomDir * _factor), _factor*minZoomMultiplier, maxZoom);	
	var _lerpH = lerp(_viewH, zoomFactor * yResolution, _factor);//Parameters: from, to, zoom smoothness.
	var _newH = clamp(_lerpH, 0, room_height);
	var _newW = _newH * (xResolution / yResolution);
	
	try//If the object still exists, we focus on it
	{
		view_camera[0] = camera_create_view(cameraFocus.x - (0.5 * _newW), cameraFocus.y - (0.5 * _newH), _newW, _newH, 0, cameraFocus, -1, -1, xResolution/2 - 10, yResolution/2 - 5);
	}
	catch(_exception)//If the object no longer exists, just refocus where the camera currently is
	{
		camera_set_view_size(view_camera[0], _newW, _newH);	
	}
}

function clearCamera()
{
	camera_destroy(view_camera[0]);
}