/// @description funionalidades principais do jogador
if(keyboard_check(ord("R"))){game_restart()}

var cima = keyboard_check(ord("W"))
var baixo = keyboard_check(ord("S"))
var dir = keyboard_check(ord("D"))
var esq = keyboard_check(ord("A"))
var tiro = mouse_check_button(mb_left)

hspeed = (dir-esq)*v
vspeed = (baixo-cima)*v

var direcao = point_direction(x,y, mouse_x, mouse_y)
image_angle = direcao

//se o mouse foi pressionado e esta dentro do intervalo de tiro
if(tiro and timeout >= intervalo_tiro){
	var t = instance_create_layer(x,y,"Player", obj_tiro)
	t.direction = direcao
	t.image_angle = direcao
	timeout = 0
}else{
	//senao incrementa o timeout para liberar o proximo tiro
	timeout++
}