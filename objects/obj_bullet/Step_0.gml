if(remove == true){
	instance_destroy()
}


var inst_e = instance_position(x,y,obj_enemy)
var inst_e1 = instance_position(x,y,obj_enemy_1)
var inst_p = instance_position(x,y,obj_player)




if(instance_exists(inst_e)){
	if(friend==true or none == true){
		if(player == true and inst_e.hp - damage <=0){
			global.kill+=1
		}
		inst_e.hp -= damage
		instance_destroy()
		repeat(5){
			instance_create_layer(x,y,"Instances",obj_blood)
		}
		instance_create_layer(x,y,"Instances",obj_blood_big)
	}
}
if(instance_exists(inst_e1)){
	if(friend==true or none == true){
		if(player == true and global.sfx == true){
			audio_play_sound(snd_hit,6,false)
		}
		if(player == true and inst_e1.hp - damage <=0){
			instance_create_layer(camera_get_view_x(view_camera[0])+700,camera_get_view_y(view_camera[0])+200,"Instances_7",obj_kill)
			global.kill+=1
			if(global.sfx == true){
				audio_play_sound(snd_kill,5,false)
			}
		}
		inst_e1.hp -= damage
		instance_destroy()
		repeat(5){
			instance_create_layer(x,y,"Instances",obj_blood)
		}
		instance_create_layer(x,y,"Instances",obj_blood_big)
	}
}
if(instance_exists(inst_p)){
	if(enemy==true or none == true){
		inst_p.hp -= damage
		instance_destroy()
		repeat(5){
			instance_create_layer(x,y,"Instances",obj_blood)
		}
		instance_create_layer(x,y,"Instances",obj_blood_big)
	}
}