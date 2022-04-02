image_alpha+=0.01
if(image_alpha>=1){
	hit = false
}
if(val == 2 and sprite_index == spr_building){
	image_xscale= ogscale
}


if(global.tp == true){
	if(x  < 5400){
		if(y < 5400 and y > 4600){
			instance_destroy()
		}
	}
}