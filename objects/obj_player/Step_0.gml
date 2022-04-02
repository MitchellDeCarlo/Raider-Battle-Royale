key_left = keyboard_check(ord("A"))
key_right = keyboard_check(ord("D"))
key_up = keyboard_check(ord("W"))
key_down = keyboard_check(ord("S"))
global.playerx = x
global.playery = y
global.playerhp = hp
//global.playerarm = armour
//global.playergun = gun.tier
var _move = key_right - key_left
var _move2 = key_down - key_up

hsp = _move * walksp 
vsp = _move2 * walksp
global.hp = hp
global.hpmax = 200 + (armour*30)
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
if(stren>=0 and stren < 20){
	armbox.sprite_index	= spr_arm_b
}
if(stren>=20 and stren < 40){
	armbox.sprite_index	= spr_arm_b2
}
if(stren>=40 and stren <= 50){
	armbox.sprite_index	= spr_arm_b3
}

if(stren>=51 and stren <= 60){
	armbox.sprite_index	= spr_arm_b4
}


if(gun.tier>=1 and gun.tier <= 10){
	gunbox.sprite_index = spr_gun_box
}
if(gun.tier>=11 and gun.tier <= 20){
	gunbox.sprite_index = spr_gun_box2
}

if(gun.tier>=21 and gun.tier <= 30){
	gunbox.sprite_index = spr_gun_box3
}

if(gun.tier>=31 and gun.tier <= 40){
	gunbox.sprite_index = spr_gun_box4
}
if(armour % 10 == 0 and armour != 0){
	armbox.val = "X"
}else{
	armbox.val = armour % 10
}

if(gun.tier % 10 == 0){
	gunbox.val = "X"
}else{
	gunbox.val = gun.tier % 10
}

if(hp < 100){
	skin = spr_player
	armour=0
	stren = -1
	green = false
	fire = false
}


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

if(key_right or key_left or key_down or key_up ){
	sprite_index = skin
}
else{
	image_index = 0
}

if (global.playerflip == false){
	image_xscale = ogscale * -1
} 
else{
	image_xscale = ogscale
}
if(freezvar == true){
	frval++
	walksp = 1
	if(frval >= 300){
		frval = 0
		freezvar = false
	}
} else{
	walksp = 5
}
if(hp<=0){
	repeat(5){
			instance_create_layer(x,y,"Instances",obj_blood)
		}
		instance_create_layer(x,y,"Instances",obj_blood_big)
	repeat(20){
		instance_create_layer(x,y,"Instances",obj_body)
	}
	instance_destroy()
	global.dead = true
}
var inst = instance_position(x,y,obj_drop)
if(instance_exists(inst) and keyboard_check(vk_tab)){
	
	enarm.sprite_index = inst.skina
	genarm.sprite_index = inst.sking
	enarm.alarm[0] = 50
	genarm.alarm[0] = 50
	armbox_en.alarm[0] = 50
	gunbox_en.alarm[0] = 50
	
	
	if(inst.armour % 10 == 0 and inst.armour != 0){
		armbox_en.val = "X"
	}else{
		armbox_en.val = inst.armour % 10
	}
	if(inst.tier % 10 == 0){
		gunbox_en.val = "X"
	}else{
		gunbox_en.val = inst.tier % 10
	}
	
	if(inst.tier>=1 and inst.tier <= 10){
			gunbox_en.sprite_index = spr_gun_box
		}
		if(inst.tier>=11 and inst.tier <= 20){
			gunbox_en.sprite_index = spr_gun_box2
		}

		if(inst.tier>=21 and inst.tier <= 30){
			gunbox_en.sprite_index = spr_gun_box3
		}
		if(inst.tier>=31 and inst.tier <= 40){
			gunbox_en.sprite_index = spr_gun_box4
		}
		if(inst.stren>=0 and inst.stren < 20){
			armbox_en.sprite_index	= spr_arm_b
		}
		if(inst.stren>=20 and inst.stren < 40){
			armbox_en.sprite_index	= spr_arm_b2
		}
		if(inst.stren>=40 and inst.stren <= 50){
			armbox_en.sprite_index	= spr_arm_b3
		}
		if(inst.stren>=51 and inst.stren <= 60){
			armbox_en.sprite_index	= spr_arm_b4
		}
	
	if(genarm.checker==true){
	
		
		inst.sking = gun.skin
		
		dum1 = gun.skinval
		dum2 = gun.skin
		dum3 = gun.tier
		//dum4 = gun.stren
		dum5 = gun.special
		
		gun.skinval = inst.skinval
		gun.skin = inst.gskin
		gun.tier = inst.tier
		//gun.stren = inst.gstren
		gun.special = inst.gspecial
		
		inst.skinval = dum1
		inst.gskin = dum2
		inst.tier = dum3
		//inst.gstren = dum4
		inst.gspecial = dum5
		
		
		
	}
	if(enarm.checker==true){
		
		
		
		green = false
		fire = false
		
		inst.skina = skin
		
		temp1 = skinval
		temp2 = armour
		temp3 = special
		temp4 = stren
		
		skinval = inst.askin
		armour = inst.armour
		special = inst.special
		stren = inst.stren
		
		
	
	if(stren == -1){
		skin = spr_player
		armour = 0
	}
	if(stren >= 0 and stren < 20){
		if(skinval >= 1 and skinval <= 30){
			skin = spr_eteir_1_1
			armour = irandom_range(1,3)
		}
		if(skinval >= 31 and skinval < 45){
			skin = spr_etier_1_2
			armour = irandom_range(4,7)
		}
		if(skinval >= 45){
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
if(stren >=20 and stren < 40){
		if(skinval >= 1 and skinval <= 30){
			skin = spr_eteir_2_1
			armour = irandom_range(11,13)
		}
		if(skinval >= 31 and skinval < 45){
			skin = spr_eteir_2_2
			armour = irandom_range(14,17)
		}
		if(skinval >= 45){
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
if(stren >= 40 and stren <=50){
		if(skinval >= 1 and skinval <= 30){
			skin = spr_eteir_3_1
			armour = irandom_range(21,23)
		}
		if(skinval >= 31 and skinval < 45){
			skin = spr_eteir_3_2
			armour = irandom_range(24,27)
		}
		if(skinval >= 45){
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
		if(skinval >= 1 and skinval <= 30){
			skin = spr_etier_4_1
			armour = irandom_range(31,33)
		}
		if(skinval >= 31 and skinval < 45){
			skin = spr_etier_4_2
			armour = irandom_range(34,37)
		}
		if(skinval >= 45){
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
	armour = inst.armour
	
	inst.askin = temp1
	inst.armour = temp2
	inst.special = temp3
	inst.stren = temp4
	
	hp = 200 + (armour * 30)
	
	}
}
arm.sprite_index = skin
armg.sprite_index = gun.skin