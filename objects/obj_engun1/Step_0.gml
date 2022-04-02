if(abs(x - global.playerx) < 2000 and abs(y - global.playery) < 2000){
dir = point_direction(x,y,point.x,point.y)
//point.x = random_range(x-500,x+500)
//point.y = random_range(y-500,y+500)
if(point.player == true){
	if(abs(x -point.x) > 1000 or abs(y - point.y) > 1000 or abs(x-point.x) < 10 and abs(y-point.y)< 10){
		point.player = false
	}else{
		image_angle = dir
	}
	
if(point.checker==false){
	point.x = random_range(x-700,x+700)
	point.y = random_range(y-700,y+700)
}
}else{
	if(abs(x -point.x) > 500 or abs(y - point.y) > 500 or abs(x-point.x) < 10 and abs(y-point.y)< 10){
		point.checker = false
	
	}
	if(point.checker==false){
		point.x = random_range(x-700,x+700)
		point.y = random_range(y-700,y+700)
	}
}

if(point.checker == true){
	image_angle = dir
}
//if(image_angle < dir){
//	image_angle +=10
//}
//if(image_angle > dir){
//	image_angle -=10;
//}


if(image_angle > 90 and image_angle < 270){
	image_yscale = ogscale * -1;
	flipval = true
}
else{
	image_yscale = ogscale
	flipval  = false
}
fd = fd -1

if(value == true){
	i++;
	if( i >= val1 and point.checker == true or point.player==true){
		shootvar = true
		i=0
	}
}
if(shootvar == true and fd < 0){
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
	if(abs(global.playerx - x) < 500 and abs(global.playery -y) < 500 and global.done == true and global.sfx == true){
		audio_play_sound(snd_machine,0,false)
	}
	bul.image_angle = image_angle
	bul.direction = image_angle
	bul.speed=7
	bul.damage = machine * tier
	bul.alarm[1] = 20
	
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
	if(abs(global.playerx - x) < 500 and abs(global.playery -y) < 500 and global.done == true and global.sfx == true){
		audio_play_sound(snd_rifle,0,false)
	}
	bul.image_angle = image_angle
	bul.direction = image_angle
	bul.speed=12
	bul.damage = rifle * tier
	bul.alarm[1] = 20
	
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
	if(abs(global.playerx - x) < 500 and abs(global.playery -y) < 500 and global.done == true and global.sfx == true){
		audio_play_sound(snd_sniper,0,false)
	}
	bul.image_angle = image_angle
	bul.direction = image_angle
	bul.speed=20
	bul.damage = sniper * tier
	bul.alarm[1] = 20
	
		if(j >= jval){
			j=0;
			shootvar = false
		}
	}
}
}
if(kill == true){
	point.death = true
	instance_destroy()
}