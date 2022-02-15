/// @description Add each character to write during alarms

typewriter_out += string_char_at(text_to_write, i);

//Increment i for advancing position
i += 1;

//Reset alarm if not at the end of the string
if ((i - 1) != string_length(text_to_write)){
    alarm[0] = 5;
} else{
    allow_touch = true;
}

