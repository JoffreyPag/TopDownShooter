/// @description configurando o jogo
room_width = 1000*level
room_height = 1000*level

if(!instance_exists(obj_player)){
	instance_create_layer(room_width/2, room_height/2, "Player", obj_player)
}

repeat(2*level){
	//var xx = random(room_width)
	var posx = random_range(100, room_width-100)
	var posy = random_range(100, room_height-100)
	
	instance_create_layer(posx, posy, "Monster", obj_monster_dad)
}