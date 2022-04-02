turret = instance_create_layer(x+75,y+40,"Instances_4",obj_tank_turret)
direction = irandom_range(0,360)
image_angle = direction -90
alarm[0] = irandom_range(50,200)

x = irandom_range(0,10000)
y = irandom_range(0,10000)

while(place_meeting(x,y,obj_military)){
	x = irandom_range(0,10000)
	y = irandom_range(0,10000)

}

turn = false

val = 0

