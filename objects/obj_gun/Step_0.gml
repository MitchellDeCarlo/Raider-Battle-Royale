x = global.playerx
y = global.playery + 5

image_angle = point_direction(x,y,mouse_x,mouse_y);

if (image_angle > 90 and image_angle < 270){
	image_yscale = ogscale * -1
	global.playerflip = false
}
else{
	image_yscale = ogscale
	global.playerflip = true
}
sprite_index = skin
if(!place_meeting(x,y,obj_military)){
fd = fd -1
if(value == true){
	i++;
	if( i >= val1){
		if(mouse_check_button(mb_left)){
			shootvar = true
			i=0
		}
		else{
			shootvar = false
		}
	}
}
if(shootvar == true and fd < 0 and mouse_check_button(mb_left)){
	j++
	if(skinval == 1){
		fd = 10
		if(special == 1){
			spval = irandom_range(1,10)
			if(spval == 5){
				var bul = instance_create_layer(x,y,"Instances_2",obj_bullet_f)
			}
			else{
				var bul = instance_create_layer(x,y,"Instances_2",obj_bullet)
			}
		}
		else if(special == 2){
			spval = irandom_range(1,5)
			if(spval == 3){
				var bul = instance_create_layer(x,y,"Instances_2",obj_bullet_i)
			}
			else{
				var bul = instance_create_layer(x,y,"Instances_2",obj_bullet)
			}
		}
		else{
			var bul = instance_create_layer(x,y,"Instances_2",obj_bullet)
		}
		if(image_angle > 90 and image_angle < 270){
		bul.image_yscale = bul.ogscale * -1 
	}
	else{
		bul.image_yscale = bul.ogscale
	}
	if(global.sfx == true){
		audio_play_sound(snd_machine,0,false)
	}
	bul.image_angle = image_angle
	bul.direction = image_angle
	bul.speed=7
	bul.damage = machine * tier
	bul.friend = true
	bul.player = true
	
		if(j >= jval){
			j=0;
			shootvar = false
		}
	}
	if(skinval == 2){
		fd = 35
		if(special == 1){
			spval = irandom_range(1,10)
			if(spval == 5){
				var bul = instance_create_layer(x,y,"Instances_2",obj_bullet_f)
			}
			else{
				var bul = instance_create_layer(x,y,"Instances_2",obj_bullet)
			}
		}
		else if(special == 2){
			spval = irandom_range(1,10)
			if(spval == 5){
				var bul = instance_create_layer(x,y,"Instances_2",obj_bullet_i)
			}
			else{
				var bul = instance_create_layer(x,y,"Instances_2",obj_bullet)
			}
		}
		else{
			var bul = instance_create_layer(x,y,"Instances_2",obj_bullet)
		}
		if(image_angle > 90 and image_angle < 270){
		bul.image_yscale = bul.ogscale * -1 
	}
	else{
		bul.image_yscale = bul.ogscale
	}
	if(global.sfx == true){
		audio_play_sound(snd_rifle,0,false)
	}
	bul.image_angle = image_angle
	bul.direction = image_angle
	bul.speed=12
	bul.damage = rifle * tier
	bul.friend = true
	bul.player = true
	
		if(j >= jval){
			j=0;
			shootvar = false
		}
	}
	if(skinval == 3){
		fd = 80
		if(special == 1){
			spval = 1
			if(spval == 1){
				var bul = instance_create_layer(x,y,"Instances_2",obj_bullet_f)
			}
			else{
				var bul = instance_create_layer(x,y,"Instances_2",obj_bullet)
			}
		}
		else if(special == 2){
			spval = 1
			if(spval == 1){
				var bul = instance_create_layer(x,y,"Instances_2",obj_bullet_i)
			}
			else{
				var bul = instance_create_layer(x,y,"Instances_2",obj_bullet)
			}
		}
		else{
			var bul = instance_create_layer(x,y,"Instances_2",obj_bullet)
		}
		if(image_angle > 90 and image_angle < 270){
		bul.image_yscale = bul.ogscale * -1 
	}
	else{
		bul.image_yscale = bul.ogscale
	}
	if(global.sfx == true){
		audio_play_sound(snd_sniper,0,false)
	}
	bul.image_angle = image_angle
	bul.direction = image_angle
	bul.speed=20
	bul.damage = sniper * tier
	bul.friend = true
	bul.player = true
	
		if(j >= jval){
			j=0;
			shootvar = false
		}
	}
}
}

if(global.dead == true){
	instance_destroy()
}