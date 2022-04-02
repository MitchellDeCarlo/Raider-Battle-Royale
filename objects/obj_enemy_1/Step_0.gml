	sprite_index = skin
	gun.x = x;
	gun.y = y + 5
	
if(global.tp==true){
	if(shield == false){
		sh = instance_create_layer(x,y,"Instances_3",obj_shield)
		shield = true
	}
	x = 5000
	y = 5000
}
if(shield == true){
	if(global.done == false){
		sh.x = x
		sh.y = y
	}
}
	if(key_right or key_left or key_down or key_up ){
		sprite_index = skin
	}
	else{
		image_index = 0
	}
//	if(abs(x - posx) < irandom_range(50,200) or abs(y - posy) < irandom_range(50,200) ){ 
		if(dirval == 1){
			key_up = true
		}

		if(dirval == 2){
			key_down = true
		}

		if(dirval == 3){
			key_left = true
		}

		if(dirval == 4){
			key_right = true
		}

		if(dirval == 5){
			key_down = true
			key_right = true
		}


		if(dirval == 6){
			key_up = true
			key_left = true
		}

		if(dirval == 7){
			key_up = true
			key_right = true;
		}
		if(dirval == 8){
			key_down = true
			key_left = true
		}
//	}
//	else if (abs(x - posx) < irandom_range(50,100) or abs(y - posy) < irandom_range(50,100)){
//		if(x < posx){
//			key_right = true
//		}
//		else{
//			key_left = true
//		}
//		if(y < posy){
//			key_down = true
//		}
//		else{
//			key_up = true
//		}
//	}



	var _move = key_right - key_left
	var _move2 = key_down - key_up

	hsp = _move * walksp

	vsp = _move2 * walksp


	if(place_meeting(x,y+vsp,obj_block)){
		while(!place_meeting(x,y+sign(vsp),obj_block)){
			y = y + sign(vsp);
		}
		vsp=0;
	}
	
	if(place_meeting(x,y+vsp,obj_wall)){
		while(!place_meeting(x,y+sign(vsp),obj_wall)){
			y = y + sign(vsp);
		}
		vsp=0;
	}
	y = y + vsp

	if(place_meeting(x+hsp,y,obj_block)){
		while(!place_meeting(x+sign(hsp),y,obj_block)){
			x = x + sign(hsp);
		}
		hsp=0;
	}
	if(place_meeting(x+hsp,y,obj_wall)){
		while(!place_meeting(x+sign(hsp),y,obj_wall)){
			x = x + sign(hsp);
		}
		hsp=0;
	}
	x = x + hsp
	if(gun.flipval){
		image_xscale = ogscale * -1
	}
	else{
		image_xscale = ogscale
	}

	if(hp<=0){
		global.encount-=1
		if(global.encount > 125){
			instance_create_layer(irandom_range(0,10000),irandom_range(0,10000),"Instances",obj_enemy_1)
		}
		drop = instance_create_layer(x,y,"Instances_11",obj_drop)
		drop.armour = armour
		drop.askin = skinval
		drop.gskin = gun.skin
		drop.special = special
		drop.skinval = gun.skinval
		drop.gspecial = gun.special
		drop.stren = stren
		drop.gstren = gun.stren
		drop.tier = gun.tier
		drop.skina = skin
		drop.sking = gun.skin
	
		repeat(20){
			instance_create_layer(x,y,"Instances",obj_body)
		}
		instance_destroy()
		gun.kill = true
	}



	if(freezvar == true){
		frval++
		walksp = 1
		if(frval >= 300){
			frval = 0
			freezvar = false
		}
	} else{
		walksp = 3.5
	}
