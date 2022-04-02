timer++
var inst_e = instance_position(x,y,obj_enemy_1)
var inst_p = instance_position(x,y,obj_player)

if(instance_exists(inst_e)){
	checker=true
	x = inst_e.x
	y = inst_e.y
}
else{
	player = true
	x = global.playerx
	y = global.playery
}

if(death == true){
	instance_destroy()
}

