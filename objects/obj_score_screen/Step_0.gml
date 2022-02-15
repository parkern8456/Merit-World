/// @description Start transition on touch
if (allow_touch & ad_played){
    if (mouse_check_button_released(mb_left)){
        audio_stop_all();
        audio_play_sound(snd_checkpoint, 10, false);
        alarm[4] = 1;
    }
}else if (allow_touch & !ad_played){
	if (mouse_check_button_released(mb_left)){
		//SHOW INTERSTITIAL AD
		if (global.interstitial_loaded = true) {
			GoogleMobileAds_ShowInterstitial();
			global.interstitial_loaded = false;
			ad_played = true;
		} 
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