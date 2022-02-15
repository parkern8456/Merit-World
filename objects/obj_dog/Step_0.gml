/// @description Dog Movement

image_xscale = move;

if (!sit && place_meeting(x+1, y, obj_enemy_block) || place_meeting(x-1, y, obj_enemy_block)){
    move *= -1;   
}

//Move animal
if (!sit){
    x += move * .5;
}



///Dog Animation

if (sit){
    sprite_index = spr_dog_sit;
}else if (!sit){
    sprite_index = spr_dog_walk;
}

