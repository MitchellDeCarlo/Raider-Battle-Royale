if(turn == true){
	if(turnt == 1){
		direction +=.1
		image_angle = direction - 90
	}
	if(turn == 2){
		direction -=.1
		image_angle = direction - 90
	}
}

if(destroy==true){
	instance_destroy()
}