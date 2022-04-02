i++
if(i >= 50){
	instance_destroy()
}
if(abs(x-global.playerx) < 600 and abs(y-global.playery) < 600){
	val = irandom_range(-3,3)
	
	show_debug_message("Hit")
	camera_set_view_angle(view_camera[0],val)
}