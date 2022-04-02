ogscale = image_yscale
i = 0
j=0
fd = 0
skinval = irandom_range(1,3)
val1 = irandom_range(50,80)
jval = irandom_range(10,30)
value = true
shootvar = false
if(skinval == 1){
	special = irandom_range(1,10)
	if(special == 1){
		skin = spr_gtier_1_m_f
	}
	else if(special == 2){
		skin = spr_gtier_1_m_I
	}
	else{
		skin = spr_gtier_1_m
	}
}
if(skinval == 2){
	special = irandom_range(1,10)
	if(special == 1){
		skin = spr_gtier_1_r_f
	}
	else if(special == 2){
		skin = spr_gtier_1_r_i
	}
	else{
		skin = spr_gtier_1_r
	}
}
if(skinval == 3){
	special = irandom_range(1,10)
	if(special == 1){
		skin = spr_gtier_1_s_f
	}
	else if(special == 2){
		skin = spr_gtier_1_s_i
	}
	else{
		skin = spr_gtier_1_s
	}
}

sprite_index = skin
machine = 5
rifle = 10
sniper = 20
global.room = 1
if(global.room==1){
	tier = irandom_range(1,10)
}

