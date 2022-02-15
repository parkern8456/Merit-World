/// @description Draw fade out box

draw_set_color(c_black);
draw_set_alpha(fadeout);
draw_rectangle(0, 0, global.screen_width, global.screen_height, false);
draw_set_alpha(1);

