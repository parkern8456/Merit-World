/// @description Draw typewriter text to screen

draw_set_color(c_white);
draw_set_font(fnt_level_intro_text);
draw_set_halign(fa_center);

draw_text(global.screen_width / 2, global.screen_height / 3, string_hash_to_newline(typewriter_out));

//Reset halign
draw_set_halign(fa_left);

//Draw Character across screen
image_speed = .2;
draw_sprite_ext(spr_nate_run, image_index, charX, global.screen_height - 78, 5, 5, 0, c_white, 1);

///Draw fade out rectangle for transition

draw_set_colour(c_black);
draw_set_alpha(fadeout);
draw_rectangle(0, 0, global.screen_width, global.screen_height, false);

//Reset alpha
draw_set_alpha(1);

