if(instance_exists(obj_player)){
//moster start to follow player
	distance = point_distance(x,y,obj_player.x, obj_player.y)
	if(distance <= visao and follower){
		seguindo = true
		var dir= point_direction(x,y, obj_player.x, obj_player.y)
		direction = dir
	} else{
		//monster start to walk randomly
		if(seguindo){
			seguindo = false
			direction = random(360)	
		}
		if(x >= room_width-20 or x <= 0){
			hspeed*=-1	
		}
		if(y >= room_height-20 or y <= 0){
			vspeed*=-1
		}
	}
}

var tiro = instance_place(x,y,obj_tiro);
if(tiro){
	instance_destroy(tiro)
	if(--vida <= 0){
		instance_destroy()
	}
}

image_angle = direction+90