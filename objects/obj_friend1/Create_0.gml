global.friend1y = y
global.friend1x = x
walksp =3.5;
key_left = false;
key_right = false;
key_up = false;
key_down = false;
fire = false
ally = false
freezvar = false
frval = 0
gun = instance_create_layer(x,y,"Instances_2",obj_friend_gun1);
mark = instance_create_layer(x,y,"Instances_3",obj_friend_marker);
walkval = irandom_range(90,200)
dirval = irandom_range(1,7);
i = 0
green = false
ogscale = image_xscale
alarm[0] = irandom_range(50,90);
stren = irandom_range(1,60)
	if(stren >= 0 and stren < 20){
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
hp = 100 +(armour*20)

x = irandom_range(0,10000)
y = irandom_range(0,10000)
while(place_meeting(x,y,obj_block)){
	x = irandom_range(0,10000)
	y = irandom_range(0,10000)
}