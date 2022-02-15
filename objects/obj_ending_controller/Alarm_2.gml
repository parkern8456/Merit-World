/// @description Fade Out Rectangle -- Fade Out Volume

if (fadeAlpha < 1){
    fadeAlpha += .0025;
    alarm[2] = 1;
}else if (fadeAlpha = 1){
    scr_destroy_particles();
    room_goto(rm_title_screen);
}

