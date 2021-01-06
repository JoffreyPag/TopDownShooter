/// @description funionalidades principais do jogador

var cima = keyboard_check(ord("W"))
var baixo = keyboard_check(ord("S"))
var dir = keyboard_check(ord("D"))
var esq = keyboard_check(ord("A"))

var tiro = mouse_check_button_pressed(mb_left)

hspeed = (dir-esq)*v
vspeed = (baixo-cima)*v

image_angle = point_direction(x,y, mouse_x, mouse_y)

if(tiro){
	instance_create_layer(x,y,"Tiro", obj_tiro)
}