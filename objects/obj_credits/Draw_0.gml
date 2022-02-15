/// @description Draw typewriter text to screen

draw_set_color(c_white);
draw_set_font(fnt_type);
draw_set_halign(fa_center);
draw_set_alpha(textFade);


//Draw Final Score and Credits
draw_text(__view_get( e__VW.XView, 0 ) + (__view_get( e__VW.WView, 0 ) / 2), __view_get( e__VW.YView, 0 ) + (__view_get( e__VW.HView, 0 ) / 2) + 16, string_hash_to_newline(typewriter_out));

//Reset
draw_set_halign(fa_left);




draw_set_alpha(1);

