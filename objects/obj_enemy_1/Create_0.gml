walksp =3.5;
key_left = false;
key_right = false;
key_up = false;
key_down = false;
posx = 0
posy = 0
freezvar = false
shield = false
fire = false
frval = 0
dr = true
checker = false
walkval = irandom_range(90,200)
dirval = irandom_range(1,7);
i = 0
special = 0
green = false
ogscale = image_xscale
alarm[0] = irandom_range(50,90);
alarm[1] = 100
stren = irandom_range(1,60)
gun = instance_create_layer(x,y,"Instances_3",obj_engun1);
gun.stren = stren

	if(stren >= 0 and stren < 20){
		//show_debug_message("Spawned Tier 1")
		skinval = irandom_range(1,50){
		if(skinval >= 1 and skinval <= 30){
			skin = spr_eteir_1_1
			armour = irandom_range(1,3)
		}
		if(skinval >= 31 and skinval < 45){
			skin = spr_etier_1_2
			armour = irandom_range(4,7)
		}
		if(skinval >= 45){
			special = irandom_range(1,10)
			armour = irandom_range(8,10)
			if(special == 1){
				skin = spr_etier_1_3_f
				fire = true
			}
			else if(special == 2){
				skin = spr_etier_1_3_h
				green = true
			}
			else{
				skin = spr_etier_1_3
			}
		}
	}
}
if(stren >=20 and stren < 40){
	//show_debug_message("Spawned Tier 2")
		skinval = irandom_range(1,50){
		if(skinval >= 1 and skinval <= 30){
			skin = spr_eteir_2_1
			armour = irandom_range(11,13)
		}
		if(skinval >= 31 and skinval < 45){
			skin = spr_eteir_2_2
			armour = irandom_range(14,17)
		}
		if(skinval >= 45){
			special = irandom_range(1,10)
			armour = irandom_range(18,20)
			if(special == 1){
				skin = spr_eteir_2_3_f
				fire = true
			}
			else if(special == 2){
				skin = spr_eteir_2_3_h
				green = true
			}
			else{
				skin = spr_eteir_2_3
			}
		}
	}
}
if(stren >= 40 and stren <=50){
	//show_debug_message("Spawned Tier 3")
	skinval = irandom_range(1,50)
		if(skinval >= 1 and skinval <= 30){
			skin = spr_eteir_3_1
			armour = irandom_range(21,23)
		}
		if(skinval >= 31 and skinval < 45){
			skin = spr_eteir_3_2
			armour = irandom_range(24,27)
		}
		if(skinval >= 45){
			special = irandom_range(1,10)
			armour = irandom_range(28,30)
			if(special == 1){
				skin = spr_eteir_3_3_f
				fire = true
			}
			else if(special == 2){
				skin = spr_eteir_3_3_h
				green = true
			}
			else{
				skin = spr_eteir_3_3
			}
		}
	}
	
if(stren >= 51 and stren <=60){
	skinval = irandom_range(1,50)
		if(skinval >= 1 and skinval <= 30){
			skin = spr_etier_4_1
			armour = irandom_range(31,33)
		}
		if(skinval >= 31 and skinval < 45){
			skin = spr_etier_4_2
			armour = irandom_range(34,37)
		}
		if(skinval >= 45){
			special = irandom_range(1,10)
			armour = irandom_range(38,40)
			if(special == 1){
				skin = spr_etier_4_3_f
				fire = true
			}
			else if(special == 2){
				skin = spr_etier_4_3_h
				green = true
			}
			else{
				skin = spr_etier_4_3
			}
		}
	}

hp = 200 +(armour*30)
while(place_meeting(x,y,obj_block)){
	x = irandom_range(0,10000)
	y = irandom_range(0,10000)
}