if(instance_exists(obj_player)){
	var dir= point_direction(x,y, obj_player.x, obj_player.y)
	direction = dir
	//another way to correct the angle when a sprite is drawed up/down
	//instead left/right
	image_angle = dir+90
}