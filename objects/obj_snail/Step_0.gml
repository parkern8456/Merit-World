/// @description Move if snail moves

image_xscale = move;

if (place_meeting(x+1, y, obj_enemy_block) || place_meeting(x-1, y, obj_enemy_block)){
    move *= -1;
}

//Move animal
if (image_index = 39){
    x += move;
}



