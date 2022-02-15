/// @description Movement

//Stop animation if paused
if ((room = rm_level_01) || (room = rm_level_02) || (room = rm_level_03) || (room = rm_level_04) || (room = rm_level_05)){
    paused = obj_player.paused;
}

if (paused){
    image_speed = 0;
}else if (place_meeting(x, y+1, obj_block) || place_meeting(x, y+1, obj_platform)) {
    image_speed = 1;
}else{
	image_speed = 0;	
}

with (obj_player){
    //IF PAUSED -- QUIT EVENT
    if (paused) exit;
}

//Gravity
if (vsp < 8){
    vsp += grav;
}

//Jumping
if (time_jump = 1){
    if (place_meeting(x, y+1, obj_block) || place_meeting(x, y+1, obj_platform)){
        vsp = time_jump * -jumpSpeed;
        time_jump = 0;
    }
}

//Vertical collisions BLOCK
if (vsp != 0){
    if (place_meeting(x, y+vsp, obj_block) && vsp >= 0){
        //Bring jumper down to the ground exactly
        while(!place_meeting(x, y+1, obj_block)){
            y += 1;
        }
        vsp = 0;
    }
}


//Vertical collisions PLATFORM
if (vsp != 0){
    if (place_meeting(x, y+vsp, obj_platform) && !place_meeting(x, y, obj_platform) && vsp > 0){
        //Bring player down to the ground exactly
        while(!place_meeting(x, y+1, obj_platform)){
            y += 1;
        }
        vsp = 0;
    }
}


//Move enemy Vertical
y += vsp;
y = floor(y);

image_xscale = move;

//Horizontal collisions
if (place_meeting(x+1, y, obj_enemy_block) || place_meeting(x-1, y, obj_enemy_block)){
    move *= -1;
}

//Move enemy Horizontal
x += moveSpeed * move;

//Collision with player
if (place_meeting(x, y, obj_player)){
    if (obj_player.y < y){
        with (obj_player) vsp = -jumpSpeed;
        if (!audio_is_playing(snd_jumper_death)){
            audio_play_sound(snd_jumper_death, 10, false);
        }else if (audio_is_playing(snd_jumper_death)){
            audio_stop_sound(snd_jumper_death);
            audio_play_sound(snd_jumper_death, 10, false);
        }
        hsp = 0;
        vsp = 0;
        global.playerScore += 500;
        scr_sprite_explode(80, 40, 1, 1, 4, 4, 5, 0, 0, 1, c_white, 0, -1);
        instance_destroy();
    }else {
        with (obj_player){
            shake = 15;
            dead = true;
            global.playerLives -= 1;
            audio_play_sound(snd_player_death, 10, false);
            hsp = 0;
            vsp = 0;
            scr_sprite_explode(120, 60, 1, 1, 8, 2, 5, 0, 0, 1, c_white, 0, -1);
            image_alpha = 0;
            obj_player.y -= 64;

            //***Set alarm for delayed player respawn***
            alarm[1] = 120;
        }
    }
}