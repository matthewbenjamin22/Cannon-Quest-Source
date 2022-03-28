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
	view_camera[0] = camera_create_view(0, 0, view_wport[0], view_hport[0], 0, obj_earth, -1, -1, xResolution/2 - 10, yResolution/2 - 10);
	
	//Setup Window size
	var _dwidth = display_get_width();
	var _dheight = display_get_height();
	var _xpos = (_dwidth / 2) - 480;
	var _ypos = (_dheight / 2) - 270;
	window_set_rectangle(_xpos, _ypos, xResolution, yResolution);
	
	//Size app screen
	surface_resize(application_surface, xResolution, yResolution);
}

function clearCamera()
{
	camera_destroy(view_camera[0]);
}