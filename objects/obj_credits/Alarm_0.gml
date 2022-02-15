/// @description Typewriter actions

//Assign line of text in succesion
text_to_write = strings[creditLine];

//Update string for output
typewriter_out += string_char_at(text_to_write, i);

//Increment i to advance position in string
i += 1;

//Continue until you reach the end of the string -- Then advance array position
if ((i - 1) != string_length(text_to_write)){
    alarm[0] = 4;
}else{
    if (creditLine <= 15){
        alarm[1] = room_speed * 9;
        creditLine ++;
    }else{
        if ((alarm[2] = -1) && textFade = 1)
            alarm[2] = room_speed * 3;
    }
}

