if(mouse_check_button_pressed(mb_left)){
	if(global.fullvar == false){
		global.fullvar = true
		sprite_index = spr_fullscreen_on
		window_set_fullscreen(global.fullvar)
	}
	else{
		global.fullvar = false
		sprite_index = spr_fullscreen
		window_set_fullscreen(global.fullvar)
	}
}