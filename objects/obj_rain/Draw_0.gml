/// @description Draw 'dark' layer

draw_set_alpha(.25);
if (flash = false){
    draw_rectangle_colour(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ), __view_get( e__VW.XView, 0 ) + global.screen_width, __view_get( e__VW.YView, 0 ) + global.screen_height, c_black, c_black, c_black, c_black, false);
}
draw_set_alpha(1);

