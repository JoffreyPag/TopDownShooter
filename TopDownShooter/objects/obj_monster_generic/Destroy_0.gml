/// @description Insert description here
// You can write your code in this editor
var repete = irandom_range(30,50)
repeat(repete){
	instance_create_layer(x,y, "Monstro", obj_monster_piece)	
}
instance_create_layer(x,y, "MonsterDrop", obj_restos)
var treme = instance_create_layer(x,y, "MonsterDrop", obj_treme)
