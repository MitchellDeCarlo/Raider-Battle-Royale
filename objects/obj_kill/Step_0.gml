image_alpha -= 0.01

if(image_alpha <= 0){
	instance_destroy()
}


x = camera_get_view_x(view_camera[0])+700
y = camera_get_view_y(view_camera[0]) + 200