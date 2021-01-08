/// @description checando se ainda há monstros no mapa
//se nao tiver a area esa limpa, a sala reinicia com um level a mais
if(!instance_exists(obj_monster_dad)){
	level++
	room_restart()
}