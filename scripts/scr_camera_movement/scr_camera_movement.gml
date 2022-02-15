function scr_camera_movement() {
	//Smooth camera

	//Initialize Camera Shake From Player
	shake = obj_player.shake;

	//Setting x offset using player's x direction
	var xOffset;
	if (image_xscale = 1)
	    xOffset = 8;
	else if (image_xscale = -1)
	    xOffset = 0;
    
	//Setting y offset using player's y direction
	var yOffset;
	if (obj_player.vsp < 4){
	    yOffset = 12;
	}else{
	    yOffset = 0;
	}

	//Smooth camera movement

	//Round the camera's X position
	//__view_set( e__VW.XView, 0, ceil(__view_get( e__VW.XView, 0 )) );

	//Apply zoom
	view_zoom = clamp(view_zoom, 1, view_max_zoom);
	__view_set( e__VW.WView, 0, obj_display_manager.ideal_width / view_zoom );
	__view_set( e__VW.HView, 0, obj_display_manager.ideal_height / view_zoom );

	//Smooth camera (only when not zoomed)
	if (view_zoom != 1){
	    if (finish){
	        __view_set( e__VW.XView, 0, (x - (__view_get( e__VW.WView, 0 ) / 2)) );
	    }
	    __view_set( e__VW.YView, 0, (y - (__view_get( e__VW.HView, 0 ) / 2)) );
	}else if (view_zoom = 1){
	    __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + ((((x + xOffset)-(__view_get( e__VW.WView, 0 ) / 2)) - __view_get( e__VW.XView, 0 )) * .1) );
	    __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + ((((y + yOffset) - (__view_get( e__VW.HView, 0 ) / 2)) - __view_get( e__VW.YView, 0 )) * .1) );
	}else if (dead){
	    __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + ((((checkX + xOffset)-(__view_get( e__VW.WView, 0 ) / 2)) - __view_get( e__VW.XView, 0 )) * .1) );
	    __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + ((((checkY + yOffset) - (__view_get( e__VW.HView, 0 ) / 2)) - __view_get( e__VW.YView, 0 )) * .1) );
	}

	//View shake modifier
	__view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (random_range(-shake, shake)) );
	__view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (random_range(-shake, shake)) );
	shake *= 0.9;

	//Update Player's Shake Variable
	obj_player.shake = shake;

	//Confine view to stay inside room boundaries
	__view_set( e__VW.XView, 0, clamp(__view_get( e__VW.XView, 0 ), 0, room_width-__view_get( e__VW.WView, 0 )) );
	__view_set( e__VW.YView, 0, clamp(__view_get( e__VW.YView, 0 ), 0, room_height-__view_get( e__VW.HView, 0 )) );




}
