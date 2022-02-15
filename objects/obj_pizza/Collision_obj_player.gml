/// @description Change to Plus One on collide with player only once -- Add 1 sec to Player Time -- Add score

if (!touched){
    sprite_index = spr_plus_one;
    audio_play_sound(snd_pizza_pickup, 10, false);
    with(obj_player){
        myTime += 1;
    }
    
    global.playerScore += 25;
    touched = true;
}

