i = 0

val = false
while(i < irandom_range(5000,6000)){
	i++
	var cover = instance_create_layer(irandom_range(250,9750),irandom_range(250,9750),"Instances_2",obj_block)
	spawnval = irandom_range(1,7)
	if(spawnval == 1){
		cover.sprite_index = spr_car
	}
	if(spawnval == 2){
		cover.sprite_index = spr_rock
	}
	if(spawnval == 3){
		cover.sprite_index = spr_block
	}
	if(spawnval == 4){
		cover.sprite_index = spr_building
	}
	if(spawnval == 5){
		rval = irandom_range(1,2)
		cover.sprite_index = spr_tank_dead
		if(rval == 2){
			cover.image_yscale = image_yscale * -1
		}
	}
	if(spawnval == 6){
		cover.sprite_index = spr_car_b
	}
	if(spawnval == 7){
		cover.sprite_index = spr_car_w
	}
	
}

j = 0

while(j < 14){
	instance_create_layer(irandom_range(250,9750),irandom_range(250,9750),"Instances_4",obj_military);
	j++
}
spawns = instance_create_layer(irandom_range(250,9750),irandom_range(250,9750),"Instances_4",obj_military);

player = instance_create_layer(-11000,-11000,"Instances",obj_player)
alarm[0] = irandom_range(30,80)