/// @description Save settings (not yet) and go to main menu
room_goto(rm_MainMenu);

try
{
	saveSettings();
}
catch(_exception)
{
	show_debug_message(_exception.message);
	show_debug_message("Settings could not be saved");
}