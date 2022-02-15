/// @description Start fade transition and change room once faded

if (fadeout < 1){
    fadeout += .0075;
    alarm[1] = 1;
}else if (fadeout >= 1){
	
	//SHOW INTERSTITIAL AD
	if (global.interstitial_loaded = true) {
        GoogleMobileAds_ShowInterstitial();
        global.interstitial_loaded = false;
    } 
	
	//Return to Main Menu
    room_goto(rm_title_screen);
}