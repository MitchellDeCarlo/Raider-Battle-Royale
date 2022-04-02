var inst_e = instance_position(x,y,obj_enemy_1)
var inst_p = instance_position(x,y,obj_player)


if(instance_exists(inst_p)){
	x = inst_p.x
	y = inst_p.y
}

if(instance_exists(inst_e)){
	x = inst_e.x
	y = inst_e.y
}

if(kill == true){
	image_alpha -= 0.01
	if(image_alpha <= 0){
		instance_destroy()
	}
}