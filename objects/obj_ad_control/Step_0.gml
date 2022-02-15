 /// @description Insert description here
// You can write your code in this editor

if (GoogleMobileAds_InterstitialStatus() == "Ready"){
    if (global.interstitial_loaded != true){
		global.interstitial_loaded = true;
	}
}