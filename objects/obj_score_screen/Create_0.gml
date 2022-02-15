/// @description Setting up typewriter text variables

if (global.playerChar = 5){
    image_speed = .2;
}else{
    image_speed = .1;
}

//Set alarm for fadein
alarm[3] = 1;

text_to_write = "Well done, Bozo!#"
typewriter_out = "";

//Alarm (i = for loop) for typing
alarm[0] = 1;
i = 1;

//Alarm for adding up score typing
alarm[1] = room_speed * 2;

//Fades-transitions
fadeout = 0;
fade = 0;
forward = false;
allow_touch = false;

ad_played = false;

scr_destroy_particles();