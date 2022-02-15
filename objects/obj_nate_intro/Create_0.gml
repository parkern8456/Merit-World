/// @description Setting up typewriter text variables

//Set alarm for fadein
alarm[3] = 1;

text_to_write = @"Nate - Guitar
                #-------------------------------------------
                #Height : 5'9             
                #Age : 30             
                #Lead boi extraordinaire .                   
                #Computer nerd . Loves space .                   
                ##Get him to the gig . . .                       
                #But make sure he finishes the game . . .";
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

