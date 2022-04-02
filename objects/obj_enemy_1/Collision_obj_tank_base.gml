global.encount-=1
repeat(5){
			instance_create_layer(x,y,"Instances",obj_blood)
		}
		instance_create_layer(x,y,"Instances",obj_blood_big)
repeat(20){
		instance_create_layer(x,y,"Instances",obj_body)
	}
	if(global.encount > 125){
		instance_create_layer(irandom_range(0,10000),irandom_range(0,10000),"Instances",obj_enemy_1)
	}
	instance_destroy()
	gun.kill = true
