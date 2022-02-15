/// @description Add level score after delay

//Add level score to total (in 50s)
if (global.playerScore >= 50){
    global.playerScore -= 50;
    global.playerTotalScore += 50;
    audio_play_sound(snd_scoreBeep, 10, false);
}
//Add level score to total (in 1s)
if ((global.playerScore < 50) && (global.playerScore > 0)){
    global.playerScore --;
    global.playerTotalScore ++;
    audio_play_sound(snd_scoreBeep, 10, false);
} 

if (global.playerScore <= 0){
    //Add time bonus to total (in 50s)
    if (global.playerTimeBonus >= 50){
        global.playerTimeBonus -= 50;
        global.playerTotalScore += 50;
        audio_play_sound(snd_scoreBeep, 10, false);
    }
    //Add time bonus to total (in 1s)
    if ((global.playerTimeBonus < 50) && (global.playerTimeBonus > 0)){
        global.playerTimeBonus --;;
        global.playerTotalScore ++;
        audio_play_sound(snd_scoreBeep, 10, false);
    }
}

//Reset timer until score-add is complete
if ((global.playerScore > 0) || (global.playerTimeBonus > 0)){
    alarm[1] = 1;
}else{
    alarm[2] = room_speed * 2;
}

