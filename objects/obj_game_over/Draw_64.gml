/// @description Draw text to screen

draw_set_color(c_white);
draw_set_font(fnt_level_intro_text);
draw_set_halign(fa_center);

draw_text(global.screen_width / 2, global.screen_height / 10, string_hash_to_newline("Game Over"));
draw_set_font(fnt_arcade);
draw_text(global.screen_width / 2, global.screen_height * (3/4), string_hash_to_newline("Score: " + string(global.playerTotalScore)));

//Reset halign
draw_set_halign(fa_left);


///Draw dead character
if (global.playerChar = 1){
    draw_sprite_ext(spr_nate_die, image_index, global.screen_width / 2, global.screen_height / 2 - 8, 5, 5, 0, c_white, 1);
}else if (global.playerChar = 2){
    draw_sprite_ext(spr_matt_die, image_index, global.screen_width / 2, global.screen_height / 2 - 8, 5, 5, 0, c_white, 1);
}else if (global.playerChar = 3){
    draw_sprite_ext(spr_nick_die, image_index, global.screen_width / 2, global.screen_height / 2 - 8, 5, 5, 0, c_white, 1);
}else if (global.playerChar = 4){
    draw_sprite_ext(spr_jesse_die, image_index, global.screen_width / 2, global.screen_height / 2 - 8, 5, 5, 0, c_white, 1);
}else if (global.playerChar = 5){
    draw_sprite_ext(spr_mike_die, image_index, global.screen_width / 2, global.screen_height / 2 - 8, 5, 5, 0, c_white, 1);
}

///Draw fade out rectangle for transition

draw_set_colour(c_black);
draw_set_alpha(fadeout);
draw_rectangle(0, 0, global.screen_width, global.screen_height, false);

//Reset alpha
draw_set_alpha(1);

