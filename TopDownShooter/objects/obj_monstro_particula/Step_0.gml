/// @description Insert description here
// You can write your code in this editor
image_angle = direction
image_xscale += .01
image_yscale += .01
speed += .01

if(image_xscale >= 1){
	instance_destroy()
	instance_create_layer(x,y, "Monster", obj_monster_children)	
}