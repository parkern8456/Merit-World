/// @description Draw typewriter text to screen

draw_set_color(c_white);
draw_set_font(fnt_type);

draw_text(20, 14, string_hash_to_newline(typewriter_out));

if (allow_touch){
    draw_sprite_ext(spr_touch, 27, global.screen_width - 27, 8, 1, 1, 0, c_white, fade);
}

if (alarm[0] != -1){
    draw_sprite_ext(spr_manager, image_index, global.screen_width - 128, global.screen_height - 128, 1, 1, 0, c_white, 1);
} else{
    draw_sprite_ext(spr_manager, 0, global.screen_width - 128, global.screen_height - 128, 1, 1, 0, c_white, 1);
}

