global.room = 1
global.loading = true
instance_create_layer(x,y,"Instances_12",obj_loading)
window_set_cursor(cr_none)
randomize()
window_set_fullscreen(global.fullvar)
global.encount = 300
global.dead = false
global.kill = 0
global.spawnerx = 0
global.spawnery = 0
global.tp = false
global.win = false
full = false
alarm[0] = 100

checker = false
if(global.music == true){
	audio_play_sound(snd_music,4,true)
}