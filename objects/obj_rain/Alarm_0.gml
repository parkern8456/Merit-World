/// @description Randomize Lightning Flash every 3 seconds

flash_chance = irandom_range(1, 5);
flash_time = irandom_range(5, 9);

if (flash_chance = 5){
    flash = true;
    audio_play_sound(snd_lightning, 10, false);
    alarm[1] = room_speed / flash_time;
}else{
    flash = false;
}

//Reset alarm
alarm[0] = room_speed * 3;

