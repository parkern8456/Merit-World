/// @description Setting up typewriter text variables

//Set alarm for fadein
alarm[3] = 1;

text_to_write = @"You did it again, Bozo !                    
                #   You are proving that you are worth it after all .                       
                #$1,000,000 is nothing to a band .                            
                #But I'm sure that it would be substantial
                #to someone like yourself . . .                        
                #So let's get you closer to earning that cash .";
typewriter_out = "";
alarm[0] = 1;
i = 1;

//Play ecto for intros
audio_play_sound(snd_ecto, 10, true);

//Fades-transitions
fadeout = 1;
fade = 0;
forward = false;
allow_touch = true;

