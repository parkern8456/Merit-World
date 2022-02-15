/// @description Animation and Player Interaction

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

//Collision with player
if ((place_meeting(x, y, obj_player)) && (obj_player.dead = false)){
    with (obj_player){
        ///Walker Interactions

        if (!dead){
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

image_xscale = move;

if (place_meeting(x+1, y, obj_enemy_block) || place_meeting(x-1, y, obj_enemy_block)){
    move *= -1;
}

//Move enemy and round position
x += moveSpeed * move;




/* */
/*  */
