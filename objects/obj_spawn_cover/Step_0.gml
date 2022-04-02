if(val == false) {
	if(spawns.spawn == true){
		global.loading = false
		player.x = spawns.x
		player.y = spawns.y
		player.hp = player.starter
		global.spawnerx = spawns.x
		global.spawnery = spawns.y
		val = true
	}
}