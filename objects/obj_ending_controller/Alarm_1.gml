/// @description Fade In The End
if (textAlpha < 1){
    textAlpha += .0025;
    volumeFade -= .0025;
    audio_master_gain(volumeFade);
}else if (textAlpha = 1){
    //4 Second Delay For Fadeout
    if (fadeFlag = false){
        alarm[3] = room_speed * 4;   
    }
    fadeFlag = true;
}else{
    textAlpha = 1;
}

