/// @description Start fade transition and change room once faded

allow_start = false;

if (fade < 1){
    fade += .0075;
    alarm[1] = 1;
}else if (fade >= 1){
	room_goto(rm_pre_intro);
}