/// @description Draw typewriter text to screen

draw_set_color(c_white);
draw_set_font(fnt_type);
draw_set_halign(fa_center);

draw_text(global.screen_width / 2, global.screen_height / 2, string_hash_to_newline(typewriter_out));

if (allow_touch){
    draw_sprite_ext(spr_touch, 27, global.screen_width - 27, 8, 1, 1, 0, c_white, fade);
}

//Reset alignment
draw_set_halign(fa_left);

