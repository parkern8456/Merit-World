/// @description Draw fade out rectangle for transition

draw_set_colour(c_black);
draw_set_alpha(fadeout);
draw_rectangle(0, 0, global.screen_width, global.screen_height, false);

//Reset alpha
draw_set_alpha(1);
 
                   