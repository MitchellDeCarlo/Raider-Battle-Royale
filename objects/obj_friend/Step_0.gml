global.friendx = x
global.friendy = y
sprite_index = skin
mark.x = x
mark.y = y - 60
gun.x = x;
gun.y = y + 5



if(ally == true){
	if(y-global.playery < 100){
		key_up = false
		key_down = true
	}
	else if(y-global.playery >  -100){
		key_down = false
		key_up = true
	}
	if(x-global.playerx < 100){
		key_right = true
		key_left = false
		
	}
	else if(x-global.playerx > -100){
		key_left = true
		key_right = false
	}
	if(x <= global.playerx+105){
		key_left = false
	}
	
	if(x >= global.playerx-105){
		key_right = false
	}
	if(y <= global.playery+100){
		key_up = false
	}
	if(y >= global.playery-100){
		key_down = false
	}
}

if(key_right or key_left or key_down or key_up ){
	sprite_index = skin
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
	ally=false
	mark.sprite_index = spr_friend_marker
	repeat(20){
		instance_create_layer(x,y,"Instances",obj_body)
	}
	x = irandom_range(0,10000)
	y = irandom_range(0,10000)
	hp = 100 +(armour*20)
	while(place_meeting(x,y,obj_block)){
		x = irandom_range(0,10000)
		y = irandom_range(0,10000)
	}
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


