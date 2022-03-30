function saveSettings()
{
	ini_open("settings.ini");
	if(fullscreen)
		fs = 1;
	else
		fs = 0;
	ini_write_real("Fullscreen","Active", fs);
	ini_write_real("Resolution","x",xResolution);
	ini_write_real("Resolution","y",yResolution);
	if(mute)
		mt = true;
	else
		mt = false;
	ini_write_real("Music","Mute",mt);
	ini_close(); 
}

function loadSettings()
{
	ini_open("settings.ini");
	
	fs = ini_read_real("Fullscreen","Active", 1);
	if(fs == 1)
		fullscreen = true;
	else
		fullscreen = false;
	xResolution = ini_read_real("Resolution","x",1280);
	yResolution = ini_read_real("Resolution","y",720);
	mt = ini_read_real("Music","Mute",0);
	if(mt == 0)
		mute = false;
	else
		mute = true;
	ini_close();
}