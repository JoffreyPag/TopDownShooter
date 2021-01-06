/*
if(instance_exists(obj_player)){
	var dir= point_direction(x,y, obj_player.x, obj_player.y)
	direction = dir
	//another way to correct the angle when a sprite is drawed up/down
	//instead left/right
	image_angle = dir+90
}
*/

if(x >= room_width-20 or x <= 0){
	hspeed*=-1	
}
if(y >= room_height-20 or y <= 0){
	vspeed*=-1
}

image_angle = direction+90