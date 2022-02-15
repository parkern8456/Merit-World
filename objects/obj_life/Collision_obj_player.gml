/// @description Add life and points when collected

global.playerScore += 5000;

//Add life if containers aren't full
if (global.playerLives < 3){
    global.playerLives += 1;
}

audio_play_sound(snd_life, 10, false);

scr_sprite_explode(60, 10, 1, 1, 4, 1, 2, 0, 0, 1, c_white, 0, -1);

//Destroy once collected
instance_destroy();

