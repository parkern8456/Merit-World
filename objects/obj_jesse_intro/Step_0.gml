/// @description Transition on touch
if (allow_touch){
    if (mouse_check_button(mb_left)){
        trans = true;
        audio_stop_all();
        audio_play_sound(snd_checkpoint, 10, false);
        alarm[1] = 1;
    }
}

///Flash Touch To Start
if (allow_touch){
    if (forward == false) {
       if (fade > 0) {
           fade -= 0.02;
      } else {
          forward = true;
       }
    } else {
      if (fade <1) {
          fade += 0.02;
      } else {
          forward = false;
      }
    }
} else if (!allow_touch){
    fade = 0;
}

///Player run on touch

if (trans){
    run_x += 2;
}

