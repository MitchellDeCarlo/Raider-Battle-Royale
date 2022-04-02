if(mouse_check_button_pressed(mb_left)){
	if(global.sfx == true){
		global.sfx = false
		sprite_index = spr_sfx
	}
	else{
		global.sfx = true
		sprite_index = spr_sfx_on
	}
}