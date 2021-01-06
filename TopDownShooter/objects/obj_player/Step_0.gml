/// @description funionalidades principais do jogador

var cima = keyboard_check(ord("W"))
var baixo = keyboard_check(ord("S"))
var dir = keyboard_check(ord("D"))
var esq = keyboard_check(ord("A"))

hspeed = (dir-esq)*v
vspeed = (baixo-cima)*v