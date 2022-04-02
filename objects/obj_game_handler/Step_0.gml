if(keyboard_check_pressed(ord("R"))){
	audio_stop_all();
	room_restart()
}

if(global.encount < 60 and checker == false){
	checker = true
	alarm[1]= 500
}

if(global.dead == false and global.encount < 2){
	global.win = true
}