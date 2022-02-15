/// @description Variables

titleFade = 0;
menuSelect = 0;

//Set view position and dimensions
__view_set( e__VW.XView, 0, 0 );
__view_set( e__VW.YView, 0, 112 );

__view_set( e__VW.WView, 0, obj_display_manager.ideal_width );
__view_set( e__VW.HView, 0, obj_display_manager.ideal_height );

//clamp to room
__view_set( e__VW.XView, 0, clamp(__view_get( e__VW.XView, 0 ), 0, room_width-__view_get( e__VW.WView, 0 )) );
__view_set( e__VW.YView, 0, clamp(__view_get( e__VW.YView, 0 ), 0, room_height-__view_get( e__VW.HView, 0 )) );

//PRESS TO START vars
text_alpha = 0;
forward = false;
allow_start = false;
alarm[0] = room_speed * 4;
fade = 0;

///Virtual Key Assignment

//Apsis Button
virtual_key_add(global.screen_width - 27, 13, 16, 16, ord("Y"));

//Merit Button
virtual_key_add(global.screen_width - 30, 46, 23, 16, ord("B"));

//Sound Button
virtual_key_add(global.screen_width - 27, 79, 16, 16, ord("M"));

//Touch To Start Buttons
virtual_key_add(0, 0, global.screen_width - 35, global.screen_height, ord("H"));
virtual_key_add(global.screen_width - 35, 100, 30, global.screen_height - 100, ord("G"));

