function scr_init_ads() {
	//Set up the ad ID's based on operating system

	//Set app and ad id's -- ios/otherwise android
	if (os_type == os_ios){
		ads_app_id = "ca-app-pub-2934103330157998~3344838167";
		interstitial_id = "ca-app-pub-2934103330157998/8061384313";
	}else {
	    ads_app_id = "ca-app-pub-2934103330157998~4601955807";
	    interstitial_id = "ca-app-pub-2934103330157998/6528331867"; 
	}

	//Initialize extension
	GoogleMobileAds_Init(interstitial_id, ads_app_id);
	GoogleMobileAds_LoadInterstitial();
	global.interstitial_loaded = false;


}
