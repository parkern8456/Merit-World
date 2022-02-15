/// @description Setting up typewriter text variables

text_to_write = @"The road looks dangerous ahead, Bozo .             
                #There is a huge storm coming . . .             
                #And it will provide some difficulty getting to the gig .            
                #No excuses, though ! ! !            
                #Rembember . . . $1,000,000 ! ! ! ! ! ! ! !                                          
                ##Good luck . . .           
                #              - Manager Guy .";
typewriter_out = "";
alarm[0] = 1;
i = 1;

//Fades-transitions
fadeout = 0;
fade = 0;
forward = false;
allow_touch = true;

touched = false;

