/// @description Setting up typewriter text variables

//Set alarm for fadein
alarm[3] = 1;

text_to_write = @"Nick - Drums
                #-------------------------------------------
                #Height : 5'7             
                #Age : 28             
                #Beats for days .                   
                #He owns land and likes to call out dorks .                   
                ##Get him to the gig . . .                       
                #Or they'll have to go acoustic . . . lame .";
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

