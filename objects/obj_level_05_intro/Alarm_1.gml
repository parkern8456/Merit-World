/// @description Start fade transition and change room once faded

if (fadeout < 1){
    fadeout += .0075;
    alarm[1] = 1;
}else if (fadeout >= 1){
    room_goto_next();
}

