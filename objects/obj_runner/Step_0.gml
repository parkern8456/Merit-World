/// @description Movement

//Stop animation if paused
if ((room = rm_level_01) || (room = rm_level_02) || (room = rm_level_03) || (room = rm_level_04) || (room = rm_level_05)){
    paused = obj_player.paused;
}

if (paused){
    image_speed = 0;
}else {
    image_speed = 1;
}

with (obj_player){
    //IF PAUSED -- QUIT EVENT
    if (paused) exit;
}

image_xscale = move;

if (place_meeting(x+1, y, obj_enemy_block) || place_meeting(x-1, y, obj_enemy_block)){
    move *= -1;
}

//Move enemy and round position
if (!flat){
    x += moveSpeed * move;
}


//Collision with player
if (place_meeting(x, y, obj_player) && (!flat) && (obj_player.dead = false)){
    if (obj_player.y < y){
        with (obj_player) vsp = -jumpSpeed;
        if (!audio_is_playing(snd_runner_flat)){
            audio_play_sound(snd_runner_flat, 10, false);
        }else if (audio_is_playing(snd_runner_flat)){
            audio_stop_sound(snd_runner_flat);
            audio_play_sound(snd_runner_flat, 10, false);
        }
        hsp = 0;
        flat = true;
        global.playerScore += 100;
        sprite_index = spr_runner_flat;
        alarm[0] = 3;
        alarm[2] = 120;
    }else {
        with (obj_player){
            shake = 15;
            dead = true;
            global.playerLives -= 1;
            audio_play_sound(snd_player_death, 10, false);
            scr_sprite_explode(120, 60, 1, 1, 8, 2, 5, 0, 0, 1, c_white, 0, -1);
            image_alpha = 0;
            obj_player.y -= 64;

            //***Set alarm for delayed player respawn***
            alarm[1] = 120;
        }
    }
}

/* */
///Test if !flat make sprite visible

if (!flat){
    image_alpha = 1;
}

/* */
/*  */
