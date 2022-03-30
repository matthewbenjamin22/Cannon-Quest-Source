/// @description Insert description here
// You can write your code in this editor
event_inherited();
name = "Cannonball " + string(cannonballNameIndex++);




function createCannonball(creator)
{
	var clicker = instance_create_layer(creator.x, creator.y, "Cannon_Layer_Base", obj_CannonballClicker);
	clicker.linkedBall = self;
	
	currentAttractor = activeObject.planet;


	//direction = creator.directionLock;
	//speed = fireSpeed * fireSpeed_multiplier;
	image_angle = direction;

	motion_add(creator.directionLock,fireSpeed * fireSpeed_multiplier);
	motion_add(currentAttractor.attractorDirection,currentAttractor.speed);	

}