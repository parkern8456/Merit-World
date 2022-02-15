/// @description Setting up typewriter text variables

text_to_write = @"The show is at a local venue . You can't miss it .             
                #It is your job to help the bros get to the gig on time .            
                #Your compensation will be $1,000,000 if you succeed.             
                #Promoters don't like when bands are late . . .            
                #So don't let the band break up over this ! ! ! ! ! ! ! !                                          
                ##Good luck . . .            
                ##              - Manager Guy .";
typewriter_out = "";
alarm[0] = 1;
i = 1;

//Fades-transitions
fadeout = 0;
fade = 0;
forward = false;
allow_touch = true;

touched = false;

