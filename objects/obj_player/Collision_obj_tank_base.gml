	repeat(5){
			instance_create_layer(x,y,"Instances",obj_blood)
		}
		instance_create_layer(x,y,"Instances",obj_blood_big)
	repeat(20){
		instance_create_layer(x,y,"Instances",obj_body)
	}
	global.dead = true
	instance_destroy()
