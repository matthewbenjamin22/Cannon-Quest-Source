/// @description Increase Cannon fire speed

if(fireSpeed < 10)
{
	fireSpeed += 0.5;
	show_debug_message("Firespeed: " + string(fireSpeed));
}
