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
		case 3:
			tutorial3(stage);
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
			pointerArrow.xOffset = -1580;
			pointerArrow.yOffset = 400;
			pointerArrow.image_angle = -90;
			break;
		case 4:
			text = "You can also use the arrow keys or WASD on your keyboard to aim the cannon.\nPress the green next arrow to continue.";
			pointerArrow.xOffset = -1400;
			pointerArrow.yOffset = 180;
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
			pointerArrow.yOffset = 460;
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
			text = "Use the mouse wheel to zoom in or out. You can also use Pg Up & Pg Down, or the , and . keys on your keyboard.";
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
			text = "Relative tracers control if tracers follow direct attractor, or center of the simulation. It may not be noticable outside the Solar System simulation.";
			pointerArrow.image_angle = 90;
			pointerArrow.xOffset = 1100;
			pointerArrow.yOffset = 1872;
			break;
		case 8:
			text = "Selecting \"Follow Cannonballs\" will force the camera to automatically follow launched cannonballs";
			pointerArrow.xOffset  = 750;
			break;
		case 9:
			text = "Selecting \"Show Arrows\" displays arrows that show information on the object's direction (in red) and gravitational attraction (in blue).";
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
			text = "You can lock the cannon to a planet's rotation by activiating the lock, or using the z key on your keyboard.";
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

function tutorial3(stage)
{
	switch(stage)
	{
		case 1:
			planetsRotate = false;
			boxVisible = true;
			arrowVisible = false;
			fixedArrowVisible = false;
			prevVisible = false;
			nextVisible = true;
			nextLevelArrowVisible = false;
			text = "In this tutorial, we will learn about spaceship mechanics. In Cannon Quest, spaceships are a special type of cannonball which can be controlled after firing.";
			break;
		case 2:
			planetsRotate = false;
			prevVisible = true;
			arrowVisible = true;
			pointerArrow.xOffset = -1700;
			pointerArrow.yOffset = 650;
			pointerArrow.image_angle = -90;
			text = "Use the projectile selection tool, or the R key on your keyboard, to switch from firing cannonballs to spaceships."
			cameraRefocused = false;
			break;
		case 3:
			planetsRotate = false;
			if(ammoType != spaceship)
			{
				ammoType = spaceship;
			}
			followCannonballsWhenFired = true;
			if(!cameraRefocused)
			{
				numBalls = instance_number(obj_cannonball);
				while(numBalls > 0)
				{
					destroyPO(instance_find(obj_cannonball,0));
					numBalls = instance_number(obj_cannonball);
				}	
			}
			if(instance_number(obj_spaceship) == 0)
			{
				focusCamera(obj_mars);
				activeObject.elevation = activeObject.maxElevation;
				activeObject.direction = 180;
				fireSpeed = 3.5;
				fireCannon();
				if(!cameraRefocused)
				{
					destroyPO(instance_find(obj_spaceship,0));
					show_debug_message("Deleting");
					cameraRefocused = true;
				}		
			}
			text = "Control the spacecraft direction using the clockwise and counterclockwise arrows, or by using the arrow keys/the A and D keys on your keyboard";
			pointerArrow.xOffset = -1400;
			pointerArrow.yOffset = 180;
			pointerArrow.image_angle = 0;
			break;
		case 4:
			cameraRefocused = false;
			if(activeObject == noone || !(activeObject.isSpaceship))
			{
				if(instance_number(obj_spaceship) == 0)
				{
					focusCamera(obj_mars);
					activeObject.elevation = activeObject.maxElevation;
					activeObject.direction = 180;
					fireSpeed = 3.5;
					fireCannon();
				}	
			}
			text = "With the ship selected, fire the main engine use the forward button, or by using the up arrow/the W key on your keyboard.";
			pointerArrow.xOffset = -1536;
			pointerArrow.yOffset = 350;
			pointerArrow.image_angle = 0;
			arrowVisible = true;
			break;
		case 5:
			arrowVisible = false;	
			text = "By increasing and decreasing speed relative to other objects, a spaceship can move through space, change its orbit, and potentially even orbit other objects.";
			nextVisible = true;
			break;
		case 6:
			nextVisible = false;
			arrowVisible = true;
			pointerArrow.xOffset = -1700;
			pointerArrow.yOffset = 1872;
			pointerArrow.image_angle = 90;
			text = "This concludes the tutorial series. Remember that you can review controls from the main menu, and replay these tutorials at any time.\nHappy cannonballing!";
			break;
	}
}	