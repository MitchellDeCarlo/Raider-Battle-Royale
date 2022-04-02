turret.x = x
turret.y = y
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

if(global.tp == true){
	turret.destroy=true
	instance_destroy()
}