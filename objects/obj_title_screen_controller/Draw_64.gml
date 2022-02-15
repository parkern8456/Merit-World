/// @description Draw GUI Buttons and Start Text

//Draw Bounding Box For Controls
draw_set_alpha(.5);
draw_set_color(c_gray);
draw_rectangle(global.screen_width - 35, 6, global.screen_width - 6, 99, false);
draw_set_alpha(1);

//Apsis Button
if (!keyboard_check_pressed(ord("Y"))){
    draw_sprite_ext(spr_apsis_web, 0, global.screen_width - 27, 13, 1, 1, 0, c_black, .25);
    draw_sprite(spr_apsis_web, 0, global.screen_width - 28, 12);
}else if (keyboard_check_released(ord("B"))){
    draw_sprite(spr_apsis_web, 0, global.screen_width - 27, 13);
}

//Merit Button
if (!keyboard_check_pressed(ord("B"))){
    draw_sprite_ext(spr_merit_web, 0, global.screen_width - 30, 46, 1, 1, 0, c_black, .25);
    draw_sprite(spr_merit_web, 0, global.screen_width - 31, 45);
}else if (keyboard_check_pressed(ord("B"))){
    draw_sprite(spr_merit_web, 0, global.screen_width - 30, 46);
}

//Sound on Button
if (global.sound){
    if (!keyboard_check(ord("M"))){
        draw_sprite_ext(spr_sound_on, 0, global.screen_width - 27, 79, 1, 1, 0, c_black, .25);
        draw_sprite(spr_sound_on, 0, global.screen_width - 28, 78);
    }else if (keyboard_check(ord("M"))){
        draw_sprite(spr_sound_on, 0, global.screen_width - 27, 79);
    }
}else if (!global.sound){
    if (!keyboard_check(ord("M"))){
        draw_sprite_ext(spr_sound_off, 0, global.screen_width - 27, 79, 1, 1, 0, c_black, .25);
        draw_sprite(spr_sound_off, 0, global.screen_width - 28, 78);
    }else if (keyboard_check(ord("M"))){
        draw_sprite(spr_sound_off, 0, global.screen_width - 27, 79);
    }
}

///Draw Touch To Start

draw_set_alpha(text_alpha);
draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_set_font(fnt_arcade);
draw_text(global.screen_width / 2, global.screen_height - 42, string_hash_to_newline("TOUCH  TO  START"));

//Reset
draw_set_alpha(1);
draw_set_halign(fa_left);


///Draw fade out rectangle for transition

draw_set_colour(c_black);
draw_set_alpha(fade);
draw_rectangle(0, 0, global.screen_width, global.screen_height, false);

//Reset alpha
draw_set_alpha(1);