//Check for async_load ds_map
var _id = async_load[? "id"];
if (_id == GoogleMobileAds_ASyncEvent) {
    var ident = async_load[? "type"];
    
    switch(ident) {
        case "interstitial_load":
            if (async_load[? "loaded"] == 1) {
                global.interstitial_loaded = true;
            }
        break;
		case "interstitial_closed":
			GoogleMobileAds_LoadInterstitial();
			global.interstitial_loaded = false;
			break;
    }
}

