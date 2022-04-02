var inst = instance_position(x,y,obj_friend)
var inst1 = instance_position(x,y,obj_friend1)
var inst2 = instance_position(x,y,obj_friend2)
var inst3 = instance_position(x,y,obj_friend3)
var inst_e = instance_position(x,y,obj_enemy_1)
var inst_p = instance_position(x,y,obj_player)
if(instance_exists(inst)){
	x = inst.x
	y = inst.y
}
if(instance_exists(inst1)){
	x = inst1.x
	y = inst1.y
}

if(instance_exists(inst2)){
	x = inst2.x
	y = inst2.y
}

if(instance_exists(inst3)){
	x = inst3.x
	y = inst3.y
}

if(instance_exists(inst_e)){
	x = inst_e.x
	y = inst_e.y
}

if(instance_exists(inst_p)){
	x = inst_p.x
	y = inst_p.y
}

if(kill == true){
	image_alpha -= 0.01
	if(image_alpha <= 0){
		instance_destroy()
	}
}
