/// @description Control buttons

//Unfortunately loops can't be used here.
//Gamemaker doesn't like modifying image_index from arrays when objects differ
//This isn't pretty but it works


switch(activeButton)
{
	case 1:
		button1.image_index = 1;
		button2.image_index = 0;
		button3.image_index = 0;
		button4.image_index = 0;
		button5.image_index = 0;
		break;
	case 2:
		button1.image_index = 0;
		button2.image_index = 1;
		button3.image_index = 0;
		button4.image_index = 0;
		button5.image_index = 0;
		break;
	case 3:
		button1.image_index = 0;
		button2.image_index = 0;
		button3.image_index = 1;
		button4.image_index = 0;
		button5.image_index = 0;
		break;
	case 4:
		button1.image_index = 0;
		button2.image_index = 0;
		button3.image_index = 0;
		button4.image_index = 1;
		button5.image_index = 0;
		break;
	case 5:
		button1.image_index = 0;
		button2.image_index = 0;
		button3.image_index = 0;
		button4.image_index = 0;
		button5.image_index = 1;
		break;
}

setResolution(activeButton);
setupCamera();
focusCameraMenu(button3);