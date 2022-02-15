/// @description Lower Curtains After Song Ends (alarm[0]) -- Transition When Done
/// @param alarm[0]

if (drawCurtains && curtainPos <= (room_height - 8)){
    curtainPos += .5;
}else if (curtainPos > (room_height - 8)){
    curtainsDown = true;
}

///Audio for Curtain sequence -- Curtains Down

if (curtainsDown){
    //Play crowd noise -- Loop
    if (!audio_is_playing(snd_crowd)){
        audio_play_sound(snd_crowd, 10, false);
    }
    
    alarm[1] = 1;
}

if (drawCurtains){
    //Play crowd chant -- Loop
    if (!audio_is_playing(snd_crowd_chant)){
        audio_play_sound(snd_crowd_chant, 10, false);
    }
}

