/// @description Setting up typewriter text variables

text_to_write = @"This next one is going to get chilly .             
                #Winter is coming . . .             
                #I'm not sure why . . . but it is .            
                #Prepare yourself for the blizzard ahead ! ! !            
                #It will all be worth the . . . $1,000,000 ! ! ! ! ! ! !                                          
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

