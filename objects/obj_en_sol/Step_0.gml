gun.x = x;
gun.y = y + 5

if(key_right or key_left or key_down or key_up ){
	sprite_index = spr_en_sol
}
else{
	image_index = 0
}
if(ally == false){
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
}



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
y = y + vsp

if(place_meeting(x+hsp,y,obj_block)){
	while(!place_meeting(x+sign(hsp),y,obj_block)){
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
	repeat(20){
		instance_create_layer(x,y,"Instances",obj_body)
	}
	x = irandom_range(0,10000)
	y = irandom_range(0,10000)
	hp = 100
	while(place_meeting(x,y,obj_block)){
		x = irandom_range(0,10000)
		y = irandom_range(0,10000)
	}
}
