// Inherit the parent event
event_inherited();
contador ++

if(contador == 20){
	var mon = instance_create_layer(x,y, "Monster", obj_monstro_particula)
	mon.direction = direction+130
} else if(contador == 40){
	var mon = instance_create_layer(x,y, "Monster", obj_monstro_particula)
	mon.direction = direction+150
}else if(contador == 60){
	var mon = instance_create_layer(x,y, "Monster", obj_monstro_particula)
	mon.direction = direction+210
}else if(contador == 80){
	var mon = instance_create_layer(x,y, "Monster", obj_monstro_particula)
	mon.direction = direction+230
}else if(contador >= 200){
	contador = 0	
}
