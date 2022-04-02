if(global.tp == true){
	yval = 3976
	xval = 3976
	repeat(4){
		instance_create_layer(xval,yval,"Instances_4",obj_wall)
		xval += 512
	}
	repeat(4){
		instance_create_layer(xval,yval,"Instances_4",obj_wall)
		yval += 512
	}
	repeat(4){
		instance_create_layer(xval,yval,"Instances_4",obj_wall)
		xval -= 512
	}
	repeat(4){
		instance_create_layer(xval,yval,"Instances_4",obj_wall)
		yval -= 512
	}
	instance_destroy()
}