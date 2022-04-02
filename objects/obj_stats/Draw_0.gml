draw_set_font(fnt_stats)
var c= c_white
var r = c_red
var g = c_green
draw_text_transformed_color(x+10,y+40,"X: "+string(global.playerx-5000),1,1,0,c,c,c,c,1);
draw_text_transformed_color(x+10,y+80,"Y: "+string(global.playery-5000),1,1,0,c,c,c,c,1);
draw_text_transformed_color(x+950,y+80,"PLAYERS REMAINING: "+string(global.encount),1,1,0,c,c,c,c,1);
//draw_text_transformed_color(x+10,y+120,"ARMOUR TIER: "+string(global.playerarm),1,1,0,c,c,c,c,1);
//draw_text_transformed_color(x+10,y+160,"GUN TIER: "+string(global.playergun),1,1,0,c,c,c,c,1);

draw_text_transformed_color(x+10,y+820,"HP: "+string(global.playerhp),1,1,0,c,c,c,c,1);
draw_text_transformed_color(x+10,y+780,"KILLS: "+string(global.kill),1,1,0,c,c,c,c,1);



if(global.dead == true){
	draw_text_transformed_color(x+550,y+100,"DEAD",5,5,0,r,r,r,r,1);
	draw_text_transformed_color(x+550,y+180,"Press R To Restart",2,2,0,c,c,c,c,1);
}

if(global.win == true){
	highscore_add(1,global.kill)
	draw_text_transformed_color(x+550,y+100,"WIN",5,5,0,g,g,g,g,1);
	draw_text_transformed_color(x+550,y+180,"Press R To Restart",2,2,0,c,c,c,c,1);
	draw_text_transformed_color(x+550,y+220,"Enemies killed "+string(global.kill),2,2,0,c,c,c,c,1);
}