/// @description Setting up typewriter text variables

text_to_write = @"Two members are safely at the gig .             
                #But there are three more . . .             
                #So don't get too comfortable, Bozo .            
                #You have some work to do ! ! !            
                #And rembember . . . $1,000,000 ! ! ! ! ! ! ! !                                          
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

