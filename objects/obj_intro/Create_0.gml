/// @description Setting up typewriter text variables

//Set alarm for fadein
alarm[3] = 1;

text_to_write = @"Hey, Bozo . . .                    
                #   I'm seeking someone for an important mission .                        
                #And you look like just the person I need .                        
                #The band Merit has a show tonight and they need help##getting there in one piece . . .                        
                #Intrigued ? ? ?                        
                ##Good .##Let's proceed .";
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

