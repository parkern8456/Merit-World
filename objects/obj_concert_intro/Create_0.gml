/// @description Setting up typewriter text variables

text_to_write = "Ladies and Gentlemen . . .#                                #MERIT ! ! ! ! ! ! !";
typewriter_out = "";
alarm[0] = 1;
i = 1;

//Set alarm for fadein
alarm[3] = 1;

fadeout = 1;
charX = -320;


//Play Crowd Noise
audio_play_sound(snd_crowd, 10, true);
audio_play_sound(snd_crowd_chant, 10, true);

