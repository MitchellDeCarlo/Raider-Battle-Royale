while(i < walkval){
	i++;
}
walkval = irandom_range(40,90)
dirval = irandom_range(1,7);

key_left = false;
key_right = false;
key_up = false;
key_down = false;

if(ally == false){
	alarm[0] = irandom_range(10,50);
}