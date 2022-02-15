/// @description Respawn player after death (unless out of lives)
/// @param unless out of lives
function scr_spawn_player() {

	if (global.playerLives >= 0){ 
	    obj_player.x = global.checkX;
	    obj_player.y = global.checkY;
	    obj_player.vsp = 0;
	    obj_player.image_xscale = 1;
    
	    obj_player.image_alpha = 1;
	    obj_player.dead = false;
    
	    audio_play_sound(snd_player_spawn, 10, false);
    
	    //RESET BACKGROUND POSITIONS
    
	    //Clouds
	    __background_set( e__BG.X, 0, global.checkX_BG_far );
	    __background_set( e__BG.Y, 0, 70 )

	    //Skyline small (far)
	    __background_set( e__BG.X, 1, global.checkX_BG );
	    __background_set( e__BG.Y, 1, 189 )

	    //Skyline big (close)
	    __background_set( e__BG.X, 2, global.checkX_BG_close );
	    __background_set( e__BG.Y, 2, 86 );
    
	} else if (global.playerLives < 0){
	    audio_stop_all();
	    global.playerTotalScore += global.playerScore;
	    room_goto(rm_game_over);
	    scr_destroy_particles();
	}


}
