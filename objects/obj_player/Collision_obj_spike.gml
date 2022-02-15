/// @description Spike Interactions
if (!dead){
    shake = 15;
    global.playerLives -= 1;
    dead = true;

    audio_play_sound(snd_player_death, 10, false);
    scr_sprite_explode(120, 60, 1, 1, 8, 2, 5, 0, 0, 1, c_white, 0, -1);
    image_alpha = 0;
    obj_player.y -= 80;

    //***Set alarm for delayed player respawn***
    alarm[1] = 120;
}

/* */
/*  */
