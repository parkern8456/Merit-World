function scr_destroy_particles() {
	//Destroy Instrument Sparks
	with (obj_finish_line){
	    part_type_destroy(partFinish);
	    part_emitter_destroy(partFinish_sys, partFinish_emit);
	    part_system_destroy(partFinish_sys);
	}

	//Destroy Rain
	with (obj_rain){
		part_type_destroy(partRain);
		part_emitter_destroy(partRain_sys, partRain_emit);
		part_system_destroy(partRain_sys);
	}


	//Destroy Snow (All 3 depths)
	with (obj_snow){
		part_type_destroy(partSnow);
		part_emitter_destroy(partSnow_sys, partSnow_emit);
		part_system_destroy(partSnow_sys);
	}
    
	with (obj_snow_far){
		part_type_destroy(partSnow);
		part_emitter_destroy(partSnow_sys, partSnow_emit);
		part_system_destroy(partSnow_sys);
	}
    
	with (obj_snow_close){
		part_type_destroy(partSnow);
		part_emitter_destroy(partSnow_sys, partSnow_emit);
		part_system_destroy(partSnow_sys);
	}


	//Destroy Fireworks
	with (obj_fireworks){
	    part_emitter_destroy(partFirework_sys, partFirework_emit);
	    part_system_destroy(partFirework_sys);
	}


}
