/// @description Insert description here
// You can write your code in this editor
var treme = instance_create_layer(x,y, "MonsterDrop", obj_treme)
treme.f = 50
treme.alarm[0] = room_speed

var repete = irandom_range(30,50)
repeat(repete){
	instance_create_layer(x,y, "Monster", obj_monster_particle_dad)	
}