walksp =3.5;
key_left = false;
key_right = false;
key_up = false;
key_down = false;
fire = false
ally = false
freezvar = false
frval = 0
walkval = irandom_range(90,200)
dirval = irandom_range(1,7);
i = 0
ogscale = image_xscale
hp = 100
sprite_index = spr_en_sol
gun = instance_create_layer(x,y,"Instances_2",obj_m4a1s_e);
alarm[0] = irandom_range(50,90);
alarm[1] = 50
x = irandom_range(0,10000)
y = irandom_range(0,10000)
while(place_meeting(x,y,obj_block)){
	x = irandom_range(0,10000)
	y = irandom_range(0,10000)
}
