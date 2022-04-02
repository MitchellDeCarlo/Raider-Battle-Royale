if(fire == true){
	charge = irandom_range(0,10)
	if(charge == 5){
		repeat(10){
			var f = instance_create_layer(x,y,"Instances_4",obj_fireball)
			f.enemy = true
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