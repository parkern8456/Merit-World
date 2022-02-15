/// @description Draw typewriter text and character to screen

draw_set_color(c_white);
draw_set_font(fnt_type);

draw_text(20, 14, string_hash_to_newline(typewriter_out));

if (allow_touch){
    draw_sprite_ext(spr_touch, 27, global.screen_width - 27, 8, 1, 1, 0, c_white, fade);
}

image_speed = .2;
if (!trans){
    draw_sprite_ext(spr_nick_idle, image_index, global.screen_width - 96, global.screen_height - 128, 8, 8, 0, c_white, 1);
}else if (trans){
    draw_sprite_ext(spr_nick_run, image_index, global.screen_width - 96 + run_x, global.screen_height - 128, 8, 8, 0, c_white, 1);
}

