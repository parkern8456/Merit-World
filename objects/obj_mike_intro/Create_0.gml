/// @description Setting up typewriter text variables

//Set alarm for fadein
alarm[3] = 1;

text_to_write = @"Mike - Vocals
                #-------------------------------------------
                #Height : 5'9             
                #Age : 27 (23)             
                #Voice of a pop punk angel.                   
                #Pokemon enthusiast . Beer boi.                   
                ##Get him to the gig . . .                       
                #or Merit is done for ! ! ! ! ! !";
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

