/// @description Setting up typewriter text variables

//Set alarm for fadein
alarm[3] = 1;

text_to_write = @"Well done, Bozo . . .                    
                #   I see you succeeded in getting Nate to the gig .                       
                #Meh . . . Beginner's luck .                            
                #But you still have a long way to go before you're done .                        
                #Dont forget . . .                        
                #The fate of Merit is in your hands .";
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

