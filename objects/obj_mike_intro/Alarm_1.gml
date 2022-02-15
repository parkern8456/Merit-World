/// @description Start fade transition and change room once faded

allow_touch = false;

if (fadeout < 1){
    fadeout += .0075;
    alarm[1] = 1;
}else if (fadeout >= 1){
    room_goto_next();
}

