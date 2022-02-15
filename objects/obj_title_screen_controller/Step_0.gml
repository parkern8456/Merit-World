/// @description GUI Buttons

//Apsis Button
if (keyboard_check_released(ord("Y"))){
    url_open("https://linktr.ee/apsisgames");
}

//Merit Button
if (keyboard_check_released(ord("B"))){
    url_open("https://linktr.ee/meritpoppunk");
}

//Sound Button
if (keyboard_check_released(ord("M"))){
    if (global.sound){
        global.sound = false;
        audio_master_gain(0);
    }else {
        global.sound = true;
        audio_master_gain(1);
    }
}

///Fade in title and touch to start

if (titleFade < 1){
    titleFade += .004;
}

if (allow_start){
    if (keyboard_check_pressed(ord("G")) || keyboard_check_pressed(ord("H"))){
        audio_stop_all();
        audio_play_sound(snd_checkpoint, 10, false);
        alarm[1] = 1;
    }
}

///Flash Touch To Start
if (allow_start){
    if (forward == false) {
       if (text_alpha > 0) {
           text_alpha -= 0.02;
      } else {
          forward = true;
       }
    } else {
      if (text_alpha <1) {
          text_alpha += 0.02;
      } else {
          forward = false;
      }
    }
} else if (!allow_start){
    text_alpha = 0;
}

