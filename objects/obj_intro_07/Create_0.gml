/// @description Setting up typewriter text variables

//Set alarm for fadein
alarm[3] = 1;

text_to_write = @"Wow ! ! ! Incredible ! ! ! ! ! !                    
                #Almost all of Merit is at the gig on time ! ! !                       
                #But not really . . .                            
                #There are still two members left .                        
                #So don't get lazy on me now, Bozo !                        
                #The worst is still ahead of you .";
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

