x= -20000
y = -20000
global.playerx = x
global.playery = y
randomize()
ogscale = image_xscale
freezvar = false
frval = 0
walksp =3
global.playerflip = true
global.hp = 0
global.hpmax = 0
hp = 100
shield = false
fire = false
green = false
arm = instance_create_layer(x,y,"Instances_6",obj_arm);
armg = instance_create_layer(x,y,"Instances_6",obj_g);
instance_create_layer(x,y,"Instances_6",obj_inventory);
gun = instance_create_layer(x,y,"Instances_3",obj_gun);
enarm = instance_create_layer(x,y,"Instances_6",obj_en_arm);
genarm = instance_create_layer(x,y,"Instances_6",obj_en_g);
armbox = instance_create_layer(x,y,"Instances_6",obj_arm_box);
gunbox = instance_create_layer(x,y,"Instances_6",obj_gun_box);

armbox_en = instance_create_layer(x,y,"Instances_6",obj_en_arm_box);
gunbox_en = instance_create_layer(x,y,"Instances_6",obj_en_g_box);


special = 0
stren = 5
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
starter = 200 + (armour * 30)
hp = 2000000000000000000000000000000000000 +(armour*30)
sprite_index = skin
//x = irandom_range(0,10000)
//y = irandom_range(0,10000)
//while(place_meeting(x,y,obj_block)){
//	x = irandom_range(0,10000)
//	y = irandom_range(0,10000)
//}