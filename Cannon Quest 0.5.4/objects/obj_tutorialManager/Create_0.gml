/// @description Manages the tutorial



currentTutorial = 1;
tutorialStage = 1;
pointerArrow = instance_find(obj_tutorialPointerArrow,0);
fixedArrow = instance_find(obj_tutorialPointerArrowFixed,0);

text = "";
boxVisible = false;
arrowVisible = false;
fixedArrowVisible = false
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
			boxVisible = true;
			arrowVisible = false;
			prevVisible = false;
			nextVisible = true;
			nextLevelArrowVisible = false;
			text = "In this tutorial, we will discuss navigation and simulation controls.";
			break;
		case 2:
			prevVisible = true;
			text = "Use the mouse wheel to zoom in or out.";
			fixedArrow.follow = noone;
			fixedArrowVisible = false;
			break;
		case 3:
			fixedArrowVisible = true;
			fixedArrow.follow = instance_find(obj_moon,0);
			fixedArrow.image_angle = 0;
			text = "Click on an astronomical body or cannonball with your mouse to focus the camera on it.";
			arrowVisible = false;
			break;
		case 4:
			fixedArrowVisible = false;
			fixedArrow.follow = noone;
			text = "You can also click on a body in the left panel to automatically focus the camera on it.";			
			arrowVisible = true;
			pointerArrow.image_angle = 180;
			pointerArrow.xOffset = 1600;
			pointerArrow.yOffset = 1200;
			
			cameraRefocused = false;
			
			break;
		case 5:
			var moon = instance_find(obj_moon,0);
			if(!cameraRefocused)
			{
				cameraRefocused = true;
				focusCamera(moon);
			}
			pointerArrow.image_angle = 270;
			pointerArrow.xOffset = -1580;
			pointerArrow.yOffset = 128;
			text = "Press the home button to automatically return to the cannon, any time you are away."
			break;
		case 6:
			cameraRefocused = false;
			text = "We can control the simulation using the options at the top of the screen."
			pointerArrow.image_angle = 180;
			pointerArrow.xOffset = -600;
			pointerArrow.yOffset = 1950;
			break;
		case 7:
			text = "Relative tracers controls if tracers follow their parent object, or the simulation origin.\nIt may not be noticable outside the Solar System simulation.";
			pointerArrow.image_angle = 90;
			pointerArrow.xOffset = 1100;
			pointerArrow.yOffset = 1872;
			break;
		case 8:
			text = "Selecting \"Follow Cannonballs\" will force the camera to automatically follow launched cannonballs";
			pointerArrow.xOffset  = 750;
			break;
		case 9:
			text = "Selecting \"Show Arrows\" displays arrows that show information on the object's direction and gravitational attraction.";
			pointerArrow.xOffset = 400;
			break;
		case 10:
			text = "Balls that pass through atmospheres will experience drag, slowing them down and bringing them out of orbit.";
			pointerArrow.xOffset = 100;
			break;
		case 11:
			text = "Planet which rotate offer an extra level of difficulty."
			pointerArrow.xOffset = -250;
			pointerArrow.yOffset = 1872;
			pointerArrow.image_angle = 90;
			cameraRefocused = false;
			break;
		case 12:
			if(!cameraRefocused)
			{
				focusCamera(instance_find(obj_earth,0));
				cameraRefocused = true;
				planetsRotate = true;
				instance_find(obj_CBPlanetsRotate,0).image_index = 1;
			}
			text = "You can lock the cannon to a planet's location by activiating the lock, or using the z key on your keyboard.";
			pointerArrow.xOffset = -1350
			pointerArrow.yOffset = 60;
			pointerArrow.image_angle = 0;
			arrowVisible = true;
			nextVisible = true;
			nextLevelArrowVisible = false;
			break;
		case 13:
			arrowVisible = false;
			text = "This concludes the second tutorial. Press the large arrow to progress to the final tutorial.";
			nextVisible = false;
			nextLevelArrowVisible = true;
			break;
			
	}
}