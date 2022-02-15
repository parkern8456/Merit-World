/// @description Draw text and sprite to score screen

///Set text draw settings
draw_set_font(fnt_arcade);
draw_set_halign(fa_center);

//Typewriter text black-then white
draw_set_colour(c_black);
draw_set_alpha(.5);
draw_text(global.screen_width / 2 + 2, global.screen_height / 6 + 2, string_hash_to_newline(typewriter_out));
draw_set_colour(c_white);
draw_set_alpha(1);
draw_text(global.screen_width / 2, global.screen_height / 6, string_hash_to_newline(typewriter_out));


draw_set_font(fnt_type);
//Draw Score text
draw_text(global.screen_width / 2, global.screen_height / 6 + 160 , string_hash_to_newline("SCORE: " + string(global.playerTotalScore)));
draw_text(global.screen_width / 2, global.screen_height / 6 + 80 , string_hash_to_newline("Level Score : " + string(global.playerScore)));
draw_text(global.screen_width / 2, global.screen_height / 6 + 120 , string_hash_to_newline("Time Bonus : " + string(global.playerTimeBonus)));

if (allow_touch){
    draw_sprite_ext(spr_touch, 27, global.screen_width - 27, 8, 1, 1, 0, c_white, fade);
}

//Draw player - play sprite
if (global.playerChar = 1){
    draw_sprite_ext(spr_nate_play, image_index, global.screen_width - 82, global.screen_height - 80, 2.5, 2.5, 0, c_white, 1);
}else if (global.playerChar = 2){
    draw_sprite_ext(spr_matt_play, image_index, global.screen_width - 82, global.screen_height - 80, 2.5, 2.5, 0, c_white, 1);
}else if (global.playerChar = 3){
    draw_sprite_ext(spr_nick_play, image_index, global.screen_width - 82, global.screen_height - 68, 2, 2, 0, c_white, 1);
}else if (global.playerChar = 4){
    draw_sprite_ext(spr_jesse_play, image_index, global.screen_width - 82, global.screen_height - 80, 2.5, 2.5, 0, c_white, 1);
}else if (global.playerChar = 5){
    draw_sprite_ext(spr_mike_play, image_index, global.screen_width - 82, global.screen_height - 80, 2.5, 2.5, 0, c_white, 1);
}

//Reset draw align
draw_set_halign(fa_left);

