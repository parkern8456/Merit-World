/// @description Movement

if (place_meeting(x+1, y, obj_enemy_block) || place_meeting(x-1, y, obj_enemy_block)){
    move *= -1;
    image_xscale = move;
}

//Move enemy and round position
x += moveSpeed * move;


