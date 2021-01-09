layer_background_change(layer_background_get_id("Background"),choose(spr_concrete_floor, spr_second_floor))

if(!instance_exists(obj_control)){
	instance_create_layer(0,0, "Player", obj_control)	
}