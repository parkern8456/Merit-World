/// @description Transition when the character runs across screen

if (charX >= global.screen_width + 64){
    room_goto(rm_concert);
}else {
    charX += 1.5;
}

