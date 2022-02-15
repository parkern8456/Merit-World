/// @description Start transition on touch
if (allow_touch){
    if (mouse_check_button_released(mb_left)){
        room_goto_next();
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

