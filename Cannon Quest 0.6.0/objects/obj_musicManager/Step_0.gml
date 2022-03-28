/// @description Play Music

stepCount++;

if(stepCount >= 100)
{
	var ithPlaying = audio_is_playing(mus_IgnoringTheHorizon_315);
	var cinPlaying = audio_is_playing(mus_cinematic315);
	
	if(ithPlaying)
		playITH = false;
	if(cinPlaying)
		playCin = false;
	
	if(!ithPlaying)
	{
		if(!cinPlaying)
		{	
			if(playCin)
			{
				show_debug_message("Playing Cin");
				audio_play_sound(mus_cinematic315,1,false);
				playITH = true;
			}
			else if(playITH)
			{
				show_debug_message("Playing ITH");
				audio_play_sound(mus_IgnoringTheHorizon_315,1,false);
				playCin = true;
			}
		}
	}
	stepCount = 0;
}