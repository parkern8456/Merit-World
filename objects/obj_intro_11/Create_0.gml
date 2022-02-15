/// @description Setting up typewriter text variables

//Set alarm for fadein
alarm[3] = 1;

text_to_write = @"I . . . I can't believe this . . .                    
                #All the members of Merit are at the gig .                       
                #And on time ! ! ! ! ! !                            
                #Bozo . . . you have proven yourself .                        
                #You have exceeded all my expectations .                        
                #You have saved Merit ! ! ! ! ! !";
typewriter_out = "";
alarm[0] = 1;
i = 1;

//Play ecto for intros
audio_play_sound(snd_fable, 10, true);

//Fades-transitions
fadeout = 1;
fade = 0;
forward = false;
allow_touch = true;

