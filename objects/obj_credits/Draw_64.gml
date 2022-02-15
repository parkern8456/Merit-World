 /// @desc Draw Final Score

draw_set_color(c_white);
draw_set_font(fnt_type);
draw_set_halign(fa_center);
draw_set_alpha(1);
draw_text(global.screen_width / 2, 16 , "FINAL SCORE : " + string(global.playerTotalScore));