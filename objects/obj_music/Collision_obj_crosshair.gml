if(mouse_check_button_pressed(mb_left)){
	if(global.music == true){
		global.music = false
		sprite_index = spr_music
	}
	else{
		global.music = true
		sprite_index = spr_music_on
	}
}