	repeat(5){
			instance_create_layer(x,y,"Instances",obj_blood)
		}
		instance_create_layer(x,y,"Instances",obj_blood_big)
	repeat(20){
		instance_create_layer(x,y,"Instances",obj_body)
	}
	x = irandom_range(0,10000)
	y = irandom_range(0,10000)
	hp = 100
	ally=false
	mark.sprite_index = spr_friend_marker
	while(place_meeting(x,y,obj_block)){
		x = irandom_range(0,10000)
		y = irandom_range(0,10000)
	}