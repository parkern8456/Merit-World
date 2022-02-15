/// @description Draw sprite and fade in and out

if (splashFade < 1 && fadeFlag = false){
    splashFade += .005;
}else if (splashFade = 1 && fadeFlag = false && alarm[0] < 0){
    alarm[0] = room_speed * 1.5;
}else if (fadeFlag = true && splashFade > 0){
    splashFade -= .005;
}else if (fadeFlag = true && splashFade = 0){
    room_goto_next();
}

