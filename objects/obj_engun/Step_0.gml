if(dr==true){
//	if(abs(x - global.friendx) < 300 and abs(y - global.friendy) < 300){
//		posx = global.friendx
//		posy = global.friendy
//	}
//	else if(abs(x - global.friend1x) < 300 and abs(y - global.friend1y) < 300){
//		posx = global.friend1x
//		posy = global.friend1y
//	}
//	else if(abs(x - global.friend2x) < 300 and abs(y - global.friend2y) < 300){
//		posx = global.friend2x
//		posy = global.friend2y
//	}
//	else if(abs(x - global.friend3x) < 300 and abs(y - global.friend3y) < 300){
//		posx = global.friend3x
//		posy = global.friend3y
//	}
//	else if(abs(x - global.playerx) <900  and abs(y - global.playery) < 900){
//		posx = global.playerx
//		posy = global.playery
//	}
//	else if(abs(x - global.friendx) < 900 and abs(y - global.friendy) < 900){
//		posx = global.friendx
//		posy = global.friendy
//	}
//	else if(abs(x - global.friend1x) < 900 and abs(y - global.friend1y) < 900){
//		posx = global.friend1x
//		posy = global.friend1y
//	}
//	else if(abs(x - global.friend2x) < 900 and abs(y - global.friend2y) < 900){
//		posx = global.friend2x
//		posy = global.friend2y
//	}
//	else if(abs(x - global.friend3x) < 900 and abs(y - global.friend3y) < 900){
//		posx = global.friend3x
//		posy = global.friend3y
//	}
	//else{
	//	posx = global.playerx
	//	posy = global.playery
	//}

// new code delete if going back
posx = global.playerx
posy = global.playery
//=============================

	dir = point_direction(x,y,posx,posy)
	image_angle = dir


	if(image_angle > 90 and image_angle < 270){
		image_yscale = ogscale * -1;
		flipval = true
	}
	else{
		image_yscale = ogscale
		flipval  = false
	}

	fd = fd -1
	if(abs(x - posx) < 900 and abs(y - posy) < 700){
		i++;
		if( i >= val1){
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
		bul.image_angle = image_angle
		bul.direction = image_angle
		bul.speed=7
		bul.damage = machine * tier
		bul.enemy = true
	
			if(j >= jval){
				shootvar = false
				j=0;
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
		bul.image_angle = image_angle
		bul.direction = image_angle
		bul.speed=12
		bul.damage = rifle * tier
		bul.enemy = true
	
			if(j >= jval){
				shootvar = false
				j=0;
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
		bul.image_angle = image_angle
		bul.direction = image_angle
		bul.speed=20
		bul.damage = sniper * tier
		bul.enemy = true
	
			if(j >= jval){
				shootvar = false
				j=0;
			}
		}
	}
	if(kill == true){
		instance_destroy()
	}
}