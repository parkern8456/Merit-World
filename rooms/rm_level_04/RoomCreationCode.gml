//Play Theme
audio_play_sound(snd_ripe, 10, true);

//Reset Global Variables 
global.playerChar = 4;
global.checkX = 32;
global.checkY = 240;
global.playerLives = 3;

//Set timer for level 
with (obj_player){
    myTime = 300;
}