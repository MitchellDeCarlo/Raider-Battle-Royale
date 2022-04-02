dir = point_direction(x,y,point.xval,point.yval)
point.x = random_range(x-500,x+500)
point.y = random_range(y-500,y+500)
if(image_angle < dir){
	image_angle +=5
}
if(image_angle > dir){
	image_angle -=5;
}

if(point.timer > 200){
	shootvar = false
}

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
	if( i >= val1 and point.timer < 200){
		shootvar = true
		i=0
	}
}
if(shootvar == true and fd < 0){
	fd = 10
	j++
	var bul = instance_create_layer(x,y,"Instances_2",obj_bullet_en)
	if(image_angle > 90 and image_angle < 270){
		bul.image_yscale = bul.ogscale * -1 
	}
	else{
		bul.image_yscale = bul.ogscale
	}
	bul.image_angle = image_angle
	bul.direction = image_angle
	bul.speed=12
	bul.damage = 5
	
		if(j >= jval){
			j=0;
			shootvar = false
		}
	}
if(kill == true){
	instance_destroy()
}
