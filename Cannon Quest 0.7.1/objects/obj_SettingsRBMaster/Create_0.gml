/// @description Manage Radio Buttons


button1 = instance_find(obj_SettingsRBRes1,0);
button2 = instance_find(obj_SettingsRBRes2,0);
button3 = instance_find(obj_SettingsRBRes3,0);
button4 = instance_find(obj_SettingsRBRes4,0);
button5 = instance_find(obj_SettingsRBRes5,0);

if(xResolution == 1280)
	activeButton = 1;
else if(xResolution == 1366)
	activeButton = 2;
else if(xResolution == 1440)
	activeButton = 3;
else if(xResolution == 1536)
	activeButton = 4;
else
	activeButton = 5;



