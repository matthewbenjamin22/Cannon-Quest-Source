/// @description Setup Mars Tutorial

event_inherited();

room_persistent = false;

planetsRotate = 0;

var tutorialManager = instance_find(obj_tutorialManager,0);
tutorialManager.tutorialStage = 1;
tutorialManager.currentTutorial = 3;

var planetsRotateCB = instance_find(obj_CBPlanetsRotate,0);
planetsRotateCB.yOffset = 1000;