/// @description Setting up typewriter text variables

//Set alarm for fadein
alarm[3] = 1;

text_to_write = @"I see you survived the harsh and ridiculous winter .                    
                #With Jesse at the gig that only leaves . . .                       
                #One more member ! ! ! ! ! !                            
                #You have been through a lot, Bozo .                        
                #If you can get one more member to the gig . . .                        
                #You will be a millionaire ! ! ! ! ! !";
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

