/// @description Insert description here
// You can write your code in this editor
image_alpha -= .05
if(image_alpha <= 0 ){
	instance_destroy()
}else{
	alarm[0] = room_speed /2
}