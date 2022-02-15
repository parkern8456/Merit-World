function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // obj_player
	global.__objectDepths[1] = 0; // obj_display_manager
	global.__objectDepths[2] = -10; // obj_block
	global.__objectDepths[3] = 0; // obj_splash_controller
	global.__objectDepths[4] = -10; // obj_enemy_block
	global.__objectDepths[5] = -10; // obj_platform
	global.__objectDepths[6] = 0; // obj_pause
	global.__objectDepths[7] = 5; // obj_water_surface
	global.__objectDepths[8] = 0; // obj_spike
	global.__objectDepths[9] = -5; // obj_sand
	global.__objectDepths[10] = -5; // obj_snowbank
	global.__objectDepths[11] = 0; // obj_elevator
	global.__objectDepths[12] = 0; // obj_checkpoint
	global.__objectDepths[13] = -10; // obj_finish_line
	global.__objectDepths[14] = -5; // obj_pizza
	global.__objectDepths[15] = -5; // obj_life
	global.__objectDepths[16] = 0; // obj_menu_nate
	global.__objectDepths[17] = 0; // obj_menu_jesse
	global.__objectDepths[18] = 0; // obj_menu_nick
	global.__objectDepths[19] = 0; // obj_menu_matt
	global.__objectDepths[20] = 0; // obj_menu_mike
	global.__objectDepths[21] = 0; // obj_walker
	global.__objectDepths[22] = 0; // obj_jumper
	global.__objectDepths[23] = 0; // obj_runner
	global.__objectDepths[24] = 0; // obj_title_screen_controller
	global.__objectDepths[25] = 0; // obj_pre_intro
	global.__objectDepths[26] = 0; // obj_intro
	global.__objectDepths[27] = 0; // obj_intro_02
	global.__objectDepths[28] = 0; // obj_intro_03
	global.__objectDepths[29] = 0; // obj_intro_04
	global.__objectDepths[30] = 0; // obj_intro_05
	global.__objectDepths[31] = 0; // obj_intro_06
	global.__objectDepths[32] = 0; // obj_intro_07
	global.__objectDepths[33] = 0; // obj_intro_08
	global.__objectDepths[34] = 0; // obj_intro_09
	global.__objectDepths[35] = 0; // obj_intro_10
	global.__objectDepths[36] = 0; // obj_intro_11
	global.__objectDepths[37] = 0; // obj_intro_12
	global.__objectDepths[38] = 0; // obj_nate_intro
	global.__objectDepths[39] = 0; // obj_matt_intro
	global.__objectDepths[40] = 0; // obj_nick_intro
	global.__objectDepths[41] = 0; // obj_jesse_intro
	global.__objectDepths[42] = 0; // obj_mike_intro
	global.__objectDepths[43] = 0; // obj_level_01_intro
	global.__objectDepths[44] = 0; // obj_level_02_intro
	global.__objectDepths[45] = 0; // obj_level_03_intro
	global.__objectDepths[46] = 0; // obj_level_04_intro
	global.__objectDepths[47] = 0; // obj_level_05_intro
	global.__objectDepths[48] = 0; // obj_concert_intro
	global.__objectDepths[49] = 0; // obj_ending_controller
	global.__objectDepths[50] = 0; // obj_score_screen
	global.__objectDepths[51] = 0; // obj_game_over
	global.__objectDepths[52] = 0; // obj_demo_particle
	global.__objectDepths[53] = 5; // obj_nick_play
	global.__objectDepths[54] = 2; // obj_nate_play
	global.__objectDepths[55] = 2; // obj_matt_play
	global.__objectDepths[56] = 2; // obj_jesse_play
	global.__objectDepths[57] = 1; // obj_mike_play
	global.__objectDepths[58] = 3; // obj_nate_amp
	global.__objectDepths[59] = 3; // obj_jesse_amp
	global.__objectDepths[60] = 3; // obj_matt_amp
	global.__objectDepths[61] = 0; // obj_mike_play_block
	global.__objectDepths[62] = -50; // obj_fireworks
	global.__objectDepths[63] = 0; // obj_credits
	global.__objectDepths[64] = 1; // obj_staff_01
	global.__objectDepths[65] = 1; // obj_staff_02
	global.__objectDepths[66] = -10; // obj_rain
	global.__objectDepths[67] = -5; // obj_rain_far
	global.__objectDepths[68] = 12; // obj_snow
	global.__objectDepths[69] = -15; // obj_snow_close
	global.__objectDepths[70] = 20; // obj_snow_far
	global.__objectDepths[71] = -30; // obj_cold_layer
	global.__objectDepths[72] = 2; // obj_snail
	global.__objectDepths[73] = 2; // obj_dog
	global.__objectDepths[74] = 2; // obj_turtle
	global.__objectDepths[75] = 4; // obj_flower_01_hor
	global.__objectDepths[76] = 4; // obj_flower_01_vert
	global.__objectDepths[77] = 4; // obj_flower_02_hor
	global.__objectDepths[78] = 4; // obj_flower_02_vert
	global.__objectDepths[79] = 4; // obj_flower_03_hor
	global.__objectDepths[80] = 4; // obj_flower_03_vert

	global.__objectNames[0] = "obj_player";
	global.__objectNames[1] = "obj_display_manager";
	global.__objectNames[2] = "obj_block";
	global.__objectNames[3] = "obj_splash_controller";
	global.__objectNames[4] = "obj_enemy_block";
	global.__objectNames[5] = "obj_platform";
	global.__objectNames[6] = "obj_pause";
	global.__objectNames[7] = "obj_water_surface";
	global.__objectNames[8] = "obj_spike";
	global.__objectNames[9] = "obj_sand";
	global.__objectNames[10] = "obj_snowbank";
	global.__objectNames[11] = "obj_elevator";
	global.__objectNames[12] = "obj_checkpoint";
	global.__objectNames[13] = "obj_finish_line";
	global.__objectNames[14] = "obj_pizza";
	global.__objectNames[15] = "obj_life";
	global.__objectNames[16] = "obj_menu_nate";
	global.__objectNames[17] = "obj_menu_jesse";
	global.__objectNames[18] = "obj_menu_nick";
	global.__objectNames[19] = "obj_menu_matt";
	global.__objectNames[20] = "obj_menu_mike";
	global.__objectNames[21] = "obj_walker";
	global.__objectNames[22] = "obj_jumper";
	global.__objectNames[23] = "obj_runner";
	global.__objectNames[24] = "obj_title_screen_controller";
	global.__objectNames[25] = "obj_pre_intro";
	global.__objectNames[26] = "obj_intro";
	global.__objectNames[27] = "obj_intro_02";
	global.__objectNames[28] = "obj_intro_03";
	global.__objectNames[29] = "obj_intro_04";
	global.__objectNames[30] = "obj_intro_05";
	global.__objectNames[31] = "obj_intro_06";
	global.__objectNames[32] = "obj_intro_07";
	global.__objectNames[33] = "obj_intro_08";
	global.__objectNames[34] = "obj_intro_09";
	global.__objectNames[35] = "obj_intro_10";
	global.__objectNames[36] = "obj_intro_11";
	global.__objectNames[37] = "obj_intro_12";
	global.__objectNames[38] = "obj_nate_intro";
	global.__objectNames[39] = "obj_matt_intro";
	global.__objectNames[40] = "obj_nick_intro";
	global.__objectNames[41] = "obj_jesse_intro";
	global.__objectNames[42] = "obj_mike_intro";
	global.__objectNames[43] = "obj_level_01_intro";
	global.__objectNames[44] = "obj_level_02_intro";
	global.__objectNames[45] = "obj_level_03_intro";
	global.__objectNames[46] = "obj_level_04_intro";
	global.__objectNames[47] = "obj_level_05_intro";
	global.__objectNames[48] = "obj_concert_intro";
	global.__objectNames[49] = "obj_ending_controller";
	global.__objectNames[50] = "obj_score_screen";
	global.__objectNames[51] = "obj_game_over";
	global.__objectNames[52] = "obj_demo_particle";
	global.__objectNames[53] = "obj_nick_play";
	global.__objectNames[54] = "obj_nate_play";
	global.__objectNames[55] = "obj_matt_play";
	global.__objectNames[56] = "obj_jesse_play";
	global.__objectNames[57] = "obj_mike_play";
	global.__objectNames[58] = "obj_nate_amp";
	global.__objectNames[59] = "obj_jesse_amp";
	global.__objectNames[60] = "obj_matt_amp";
	global.__objectNames[61] = "obj_mike_play_block";
	global.__objectNames[62] = "obj_fireworks";
	global.__objectNames[63] = "obj_credits";
	global.__objectNames[64] = "obj_staff_01";
	global.__objectNames[65] = "obj_staff_02";
	global.__objectNames[66] = "obj_rain";
	global.__objectNames[67] = "obj_rain_far";
	global.__objectNames[68] = "obj_snow";
	global.__objectNames[69] = "obj_snow_close";
	global.__objectNames[70] = "obj_snow_far";
	global.__objectNames[71] = "obj_cold_layer";
	global.__objectNames[72] = "obj_snail";
	global.__objectNames[73] = "obj_dog";
	global.__objectNames[74] = "obj_turtle";
	global.__objectNames[75] = "obj_flower_01_hor";
	global.__objectNames[76] = "obj_flower_01_vert";
	global.__objectNames[77] = "obj_flower_02_hor";
	global.__objectNames[78] = "obj_flower_02_vert";
	global.__objectNames[79] = "obj_flower_03_hor";
	global.__objectNames[80] = "obj_flower_03_vert";





	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
