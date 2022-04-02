ogscale = image_yscale
flipval = false
skinval = irandom_range(1,3)
posx = 5
posy = 10
image_angle = 0
i = 0
j=0
fd = 0
kill = false
val1 = irandom_range(50,80)
jval = irandom_range(10,30)
value = true
shootvar = false
stren = irandom_range(1,60)
if(stren >= 0 and stren < 20){
	if(skinval == 1){
	special = irandom_range(1,10)
	tier = irandom_range(1,10)
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
	tier = irandom_range(1,10)
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
	tier = irandom_range(1,10)
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
}
if(stren >= 20 and stren < 40){
		if(skinval == 1){
	special = irandom_range(1,10)
	tier = irandom_range(11,20)
	if(special == 1){
		skin = spr_gtier_2_m_f
	}
	else if(special == 2){
		skin = spr_gtier_2_m_i
	}
	else{
		skin = spr_gtier_2__m
	}
}
if(skinval == 2){
	tier = irandom_range(11,20)
	special = irandom_range(1,10)
	if(special == 1){
		skin = spr_gtier_2_r_f
	}
	else if(special == 2){
		skin = spr_gtier_2_r_i
	}
	else{
		skin = spr_gtier_2_r
	}
}
if(skinval == 3){
	tier = irandom_range(11,20)
	special = irandom_range(1,10)
	if(special == 1){
		skin = spr_gtier_2_s_f
	}
	else if(special == 2){
		skin = spr_gtier_2_s_i
	}
	else{
		skin = spr_gtier_2_s
	}
}
}
if(stren >= 40 and stren <= 50){
	if(skinval == 1){
	special = irandom_range(1,10)
	tier = irandom_range(21,30)
	if(special == 1){
		skin = spr_gtier_3_m_f
	}
	else if(special == 2){
		skin = spr_gtier_3_m_i
	}
	else{
		skin = spr_gtier_3_m
	}
}
if(skinval == 2){
	tier = irandom_range(21,30)
	special = irandom_range(1,10)
	if(special == 1){
		skin = spr_gtier_3_r_f
	}
	else if(special == 2){
		skin = spr_gtier_3_r_i
	}
	else{
		skin = spr_gtier_3_r
	}
}
if(skinval == 3){
	tier = irandom_range(21,30)
	special = irandom_range(1,10)
	if(special == 1){
		skin = spr_gtier_3_s_f
	}
	else if(special == 2){
		skin = spr_gtier_3_s_i
	}
	else{
		skin = spr_gtier_3_s
	}
}
}
if(stren >= 51 and stren <= 60){
	if(skinval == 1){
	special = irandom_range(1,10)
	tier = irandom_range(31,40)
	if(special == 1){
		skin = spr_gtier_4_m_f
	}
	else if(special == 2){
		skin = spr_gtier_4_m_i
	}
	else{
		skin = spr_gtier_4_m
	}
}
if(skinval == 2){
	tier = irandom_range(31,40)
	special = irandom_range(1,10)
	if(special == 1){
		skin = spr_gtier_4_r_f
	}
	else if(special == 2){
		skin = spr_gtier_4_r_i
	}
	else{
		skin = spr_gtier_4_r
	}
}
if(skinval == 3){
	tier = irandom_range(31,40)
	special = irandom_range(1,10)
	if(special == 1){
		skin = spr_gtier_4_s_f
	}
	else if(special == 2){
		skin = spr_gtier_4_s_i
	}
	else{
		skin = spr_gtier_4_s
	}
}
}

sprite_index = skin
machine = 5
rifle = 10
sniper = 20
global.room = 1