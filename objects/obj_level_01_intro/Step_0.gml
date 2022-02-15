/// @description Transition when the character runs across screen

if (charX >= global.screen_width + 64){
    alarm[1] = 1;
}else {
    charX += 1.5;
}

