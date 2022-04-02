if(keyboard_check(vk_tab)){
	image_alpha=1
}else{
	image_alpha =0
}

x = camera_get_view_x(view_camera[0]) + 850
y = camera_get_view_y(view_camera[0]) + 300

if(place_meeting(x,y,obj_crosshair) and mouse_check_button_pressed(mb_left)){
	checker = true
}
else{
	checker = false
}
//sprite_index = spr_hold