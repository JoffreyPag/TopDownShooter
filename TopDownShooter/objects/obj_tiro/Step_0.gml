/// @description tratando alguns eventos enquanto
//a bala estiver ativa

//--- when is out of the rooom (scene) ----
if(x > room_width+10 or x < -10 or y > room_height+10 or y < -10){
	instance_destroy()
}