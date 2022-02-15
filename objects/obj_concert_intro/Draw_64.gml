/// @description Draw typewriter text to screen

draw_set_color(c_white);
draw_set_font(fnt_type);
draw_set_halign(fa_center);

draw_text(global.screen_width / 2, global.screen_height / 4, string_hash_to_newline(typewriter_out));

///Draw Characters

//Reset halign
draw_set_halign(fa_left);

//Draw Character across screen
image_speed = .2;
draw_sprite_ext(spr_nate_run, image_index + 1, (charX * .7) + 256, global.screen_height - 78, 5, 5, 0, c_white, 1);
draw_sprite_ext(spr_matt_run, image_index + 2, (charX * 1.2) + 192, global.screen_height - 78, 5, 5, 0, c_white, 1);
draw_sprite_ext(spr_nick_run, image_index, (charX * 1.0) + 128, global.screen_height - 78, 5, 5, 0, c_white, 1);
draw_sprite_ext(spr_jesse_run, image_index + 4, (charX * 1.3) + 64, global.screen_height - 78, 5, 5, 0, c_white, 1);
draw_sprite_ext(spr_mike_run, image_index + 5, charX, global.screen_height - 78, 5, 5, 0, c_white, 1);

///Draw fade out rectangle for transition

draw_set_colour(c_black);
draw_set_alpha(fadeout);
draw_rectangle(0, 0, global.screen_width, global.screen_height, false);

//Reset alpha
draw_set_alpha(1);

