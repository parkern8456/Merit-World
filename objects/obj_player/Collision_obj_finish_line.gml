/// @description Crossing the finish line

//Stop the player -- finish-true -- stop sounds
vsp = 0;
hsp = 0;

x = obj_finish_line.x;
y = obj_finish_line.y;

if (!finish){
	with (obj_finish_line){
		scr_sprite_explode(240, 120, .4, .05, 4, 2, 5, 0, 0, 1, c_white, 0, -1);
		part_type_destroy(partFinish_sys);
		image_alpha = 0;
	}
	audio_play_sound(snd_finish, 10, false);
}

finish = true;

//Stop theme music(s) (for each level)
audio_stop_sound(snd_nah);
audio_stop_sound(snd_brokeback);
audio_stop_sound(snd_ripe);
audio_stop_sound(snd_combos);
audio_stop_sound(snd_dong);
audio_stop_sound(snd_time_alarm);

