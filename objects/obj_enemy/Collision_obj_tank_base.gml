global.encount-=1
repeat(5){
			instance_create_layer(x,y,"Instances",obj_blood)
		}
		instance_create_layer(x,y,"Instances",obj_blood_big)
repeat(20){
		instance_create_layer(x,y,"Instances",obj_body)
	}
	instance_create_layer(irandom_range(0,10000),irandom_range(0,10000),"Instances",obj_enemy)
	instance_destroy()
	gun.kill = true
