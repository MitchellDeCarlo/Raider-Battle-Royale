draw_self()
draw_set_font(fnt_stats)
var c= c_white
if(keyboard_check(vk_tab)){
	draw_text_transformed_color(x+50,y+200,"T: "+string(val),3,3,0,c,c,c,c,1);
}
