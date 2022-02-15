//Play Embrace for the title screen
if (global.sound){
    audio_master_gain(1);
    audio_stop_all();
    audio_play_sound(snd_embrace, 15, true);
}else{
    audio_master_gain(0);
    audio_stop_all();
    audio_play_sound(snd_embrace, 15, true);
}


///Declare/reset Global variables on Game Start
global.checkX = 32;
global.checkY = 256;

global.checkX_BG = 0;
global.checkX_BG_far = 0;
global.checkX_BG_close = 0;

global.playerLives = 3;
global.playerScore = 0;
global.playerTotalScore = 0;
global.playerTimeBonus = 0;
global.playerLevel = 1;
global.playerChar = 0;