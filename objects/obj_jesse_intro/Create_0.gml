/// @description Setting up typewriter text variables

//Set alarm for fadein
alarm[3] = 1;

text_to_write = @"Jesse - Guitar
                #-------------------------------------------
                #Height : 6'1             
                #Age : 30             
                #Chunky rhythms .                   
                #He larps more than anyone in history .                   
                ##Get him to the gig . . .                       
                #Or call a medic to heal him .";
typewriter_out = "";
alarm[0] = 1;
i = 1;

//Fades-transitions
fadeout = 1;
fade = 0;
forward = false;
allow_touch = true;

//Player run vars
run_x = 0;
trans = false;

