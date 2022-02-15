/// @description Transition on click

if (mouse_check_button_released(mb_left)){
    alarm[1] = 1;
}

///Stop animation when it is done

if (image_index >= 17 && image_index < 18){
    image_speed = 0;
}

