/// @description Draw 'cold' layer

draw_set_alpha(.2);
draw_rectangle_colour(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + global.screen_width, __view_get( e__VW.YView, 0 ) + global.screen_height, c_aqua, c_aqua, c_aqua, c_aqua, false);
draw_set_alpha(1);

