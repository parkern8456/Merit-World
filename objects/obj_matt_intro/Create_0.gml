/// @description Setting up typewriter text variables

//Set alarm for fadein
alarm[3] = 1;

text_to_write = @"Matt - Bass
                #-------------------------------------------
                #Height : 6'0             
                #Age : 26             
                #Low end on lock .                   
                #Youngest boi . He owes EVERYONE a beer .                   
                ##Get him to the gig . . .                       
                #No one likes bass . . . but we need him .";
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

