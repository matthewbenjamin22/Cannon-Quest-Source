/// @description Manages the tutorial



tutorialStage = 1;
currentTutorial = 1;
//previousButton = instance_find(obj_tutorialPreviousButton,0);
//nextButton = instance_find(obj_tutorialNextButton,0);
//textBox = instance_find(obj_tutorialTextBox,0);
pointerArrow = instance_find(obj_tutorialPointerArrow,0);

/*
if(instance_number(obj_tutorialPointerArrowFixed == 0)
	instance_create_layer(-10,-10,"Tutorial_Layer", obj_tutorialPointerArrowFixed);
fixedArrow = instance_find(obj_tutorialPointerArrowFixed,0);
*/
text = "";
boxVisible = false;
arrowVisible = false;
prevVisible = false;
nextVisible = false;
nextLevelArrowVisible = false;

function setTutorialStage(stage)
{
	switch(currentTutorial)
	{
		case 1:
			tutorial1(stage);
			break;
		case 2:
			tutorial2(stage);
			break;
	}
}

function tutorial1(stage)
{
	switch(stage)
	{
		case 0://Off
			text = "";
			boxVisible = false;
			prevVisible = false;
			nextVisible = false;
			arrowVisible = false;
			nextLevelArrowVisible = false;
			break;
		case 1:
			text = "Welcome to Cannon Quest, a 2D orbital mechanics simulator. Please press the green next arrow to continue."
			boxVisible = true;
			prevVisible = false;
			nextVisible = true;
			break;
		case 2:
			text = "Instead of using rocket ships to launch things to space, we will use a cannon, like Isaac Newton first described 500 years ago";
			prevVisible = true;
			arrowVisible = false;
			break;
		case 3:
			text = "Use the controls on the lower right to control the cannon.\nThe circular arrows rotate the bell. The up and down arrows control the altitude.";
			arrowVisible = true;
			//pointerArrow.xOffset = -1420;
			//pointerArrow.yOffset = 200;
			pointerArrow.xOffset = -1600;
			pointerArrow.yOffset = 400;
			pointerArrow.image_angle = -90;
			break;
		case 4:
			text = "You can also use the arrow keys or WASD on your keyboard to aim the cannon.\nPress the green next arrow to continue.";
			pointerArrow.xOffset = -1420;
			pointerArrow.yOffset = 200;
			pointerArrow.image_angle = 0;
			break;
		case 5:
			text = "Use the fire button or the space bar, to fire a cannonball."
			pointerArrow.xOffset = -1550;
			pointerArrow.yOffset = 60;
			pointerArrow.image_angle = 0;
			break;
		case 6:
			text = "You can control the speed that balls fire from the cannon using the Minus and Plus buttons, or by pressing Q and E on your keyboard.";
			pointerArrow.xOffset = -1380;
			pointerArrow.yOffset = 500;
			pointerArrow.image_angle = 0;
			arrowVisible = true;
			break;
		case 7:
			text = "If a ball doesn't have enough speed, it will fall back to Earth. If it has too much, it will fly off forever. Getting the speed just right will allow us to orbit the Earth.";
			arrowVisible = false;
			break;
		case 8:
			text = "The speed needed is dependent on altitude. The closer you are to a planet, the faster you need to go to stay in orbit.";
			break;
		case 9:
			text = "Use the clear button in the top right to clear the screen of any cannonballs.";
			arrowVisible = true;
			pointerArrow.xOffset = -1550;
			pointerArrow.yOffset = 1872;
			pointerArrow.image_angle = 90;
			break;
		case 10:
			text = "You can review controls at any time from the main menu.\n";
			nextVisible = true;
			arrowVisible = false;
			nextLevelArrowVisible = false;
			break;
		case 11:
			text = "This concludes tutorial 1. Press the large arrow to continue to tutorial 2.\nFly safe!";
			nextVisible = false;
			nextLevelArrowVisible = true;
			break;
	}
}

function tutorial2(stage)
{
	switch(stage)
	{
		case 1:
			arrowVisible = false;
			prevVisible = false;
			nextVisible = true;
			nextLevelArrowVisible = false;
			text = "In this tutorial, we will discuss navigation and simulation controls.";
			break;
		case 2:
			prevVisible = true;
			text = "Use the mouse wheel to zoom in or out.";
			break;
		
	}
}