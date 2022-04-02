if(fire == true){
	charge = irandom_range(0,10)
	if(charge == 5){
		if(global.sfx == true){
			audio_play_sound(snd_fire,6,false)
		}
		repeat(10){
			var f = instance_create_layer(x,y,"Instances_4",obj_fireball)
			f.friend = true
		}
	}
}
if(green == true){
	charge = irandom_range(0,10)
	if(charge == 5){
		instance_create_layer(x+500,y,"Instances_4",obj_explosion_g)
		instance_create_layer(x,y+500,"Instances_4",obj_explosion_g)
		instance_create_layer(x-500,y,"Instances_4",obj_explosion_g)
		instance_create_layer(x,y-500,"Instances_4",obj_explosion_g)
		instance_create_layer(x+500,y+500,"Instances_4",obj_explosion_g)
		instance_create_layer(x-500,y+500,"Instances_4",obj_explosion_g)
		instance_create_layer(x-500,y-500,"Instances_4",obj_explosion_g)
		instance_create_layer(x+500,y-500,"Instances_4",obj_explosion_g)
		
	}
}