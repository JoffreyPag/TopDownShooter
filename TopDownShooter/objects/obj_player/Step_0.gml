/// @description funionalidades principais do jogador
if(keyboard_check(ord("R"))){game_restart()}
if(keyboard_check(ord("Q"))){game_end()}

var dir = point_direction(x,y, mouse_x, mouse_y)

// movimentos se nao esiver levando um knockback
if(!knockback){
	var up = keyboard_check(ord("W"))
	var down = keyboard_check(ord("S"))
	var right = keyboard_check(ord("D"))
	var left = keyboard_check(ord("A"))
	
	hspeed = (right-left)*v
	vspeed = (down-up)*v
	image_angle = dir
}

//se o mouse foi pressionado e esta dentro do intervalo de tiro
var tiro = mouse_check_button(mb_left)
if(tiro and timeout_bullet >= timeout_bullet_max){
	var t = instance_create_layer(x,y,"Player", obj_tiro)
	t.direction = dir
	t.image_angle = dir
	timeout_bullet = 0
}else{
	//senao incrementa o timeout para liberar o proximo tiro
	timeout_bullet++
}

//perde vida quando o monstro encostar
var tocou = instance_place(x,y,obj_monster_children);
if(tocou){
	instance_destroy(tocou)
	//se nao estiver invencivel eh pq nao sofreu dano
	if(!invencible){
		invencible = true
		direction = tocou.direction
		speed = 1
		knockback = true
		//perde vida e verificar se vai morrer
		if(--life <= 0)	game_restart();
	}
}

//se ta invencivel o cooldown chegar em um segundo e o player volta a levar dano
if(invencible){
	image_speed = .5
	if(cooldown_invencible++ >= room_speed){
		invencible = false
		cooldown_invencible = 0
		knockback = false
		speed = 0
	}
}else{
	image_index = 0
	image_speed = 0
}

//limites de tela
x = clamp(x, sprite_width, room_width-sprite_width)
y = clamp(y, sprite_height, room_height-sprite_height)