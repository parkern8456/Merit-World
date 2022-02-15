/// @description Draw Merit Logo and Curtains

draw_sprite_ext(spr_merit, 0, __view_get( e__VW.XView, 0 ) + (__view_get( e__VW.WView, 0 ) / 2), __view_get( e__VW.YView, 0 ) + (__view_get( e__VW.HView, 0 ) / 3), .5, .5, 0, -1, 1);
draw_sprite(spr_curtains, 0, 0, curtainPos);

///Draw 'The End'
draw_set_color(c_white);
draw_set_font(fnt_level_intro_text);
draw_set_halign(fa_center);
draw_set_alpha(textAlpha);

draw_text(__view_get( e__VW.XView, 0 ) + (__view_get( e__VW.WView, 0 ) / 2), __view_get( e__VW.YView, 0 ) + (__view_get( e__VW.HView, 0 ) / 2) - 8, string_hash_to_newline("The End"));

draw_set_alpha(1);

