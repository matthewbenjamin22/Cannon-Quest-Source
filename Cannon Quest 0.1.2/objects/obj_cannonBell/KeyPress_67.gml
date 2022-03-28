/// @description Decrease Cannon fire speed

if(fireSpeed > 0)
{
	fireSpeed -= 0.5;
	show_debug_message("Firespeed: " + string(fireSpeed));
}
