/// @description Player Actions

//Sound Control
if (keyboard_check_released(ord("M"))){
    if (global.sound = true){
        global.sound = false;
        audio_master_gain(0);
    }else {
        global.sound = true;
        audio_master_gain(1);
    } 
}

//Pause Control
if (start && !finish){
    if (paused && (keyboard_check_released(ord("G")) || keyboard_check_released(ord("H")) || keyboard_check_released(ord("P")))){
        audio_resume_all();
        audio_play_sound(snd_pause, 10, false);
        image_speed = .2;
        paused = false;
    }else if (!paused && keyboard_check_released(ord("P"))){
        audio_pause_all();
        audio_play_sound(snd_pause, 10, false);
        image_speed = 0;
        paused = true;
    }
}

///Movement and Sound

//IF PAUSED -- QUIT EVENT
if (paused) exit;

//*****************************
//*****Control Interaction*****
//*****************************

//Player keyboard input or gamepad if connected
if (!controller){
    key_right = keyboard_check(ord("D"));
    key_left = -keyboard_check(ord("A"));
    key_jump = keyboard_check_pressed(vk_space);
}else if (controller){
    if (gamepad_axis_value(0, gp_axislh) > .25 || gamepad_button_check(0, gp_padr))
        key_right = 1;
    else if (gamepad_axis_value(0, gp_axislh) <= .25 || !gamepad_button_check(0, gp_padr))
        key_right = 0;
    if (gamepad_axis_value(0, gp_axislh) < -.25 || gamepad_button_check(0, gp_padl))
        key_left = -1;
    else if (gamepad_axis_value(0, gp_axislh) >= -.25 || !gamepad_button_check(0, gp_padl))
        key_left = 0;
    key_jump = gamepad_button_check_pressed(0, gp_face1);
}

//If the player is dead or start countdown isn't over, negate input and restrict movement
if (dead || start = false || finish = true){
    key_right = 0;
    key_left = 0;
    key_jump = 0;
}


//Input reaction -- Movement (with acceleration/deceleration)
move = key_left + key_right;

if (move != 0 && (!place_meeting(x+hsp, y, obj_block) || place_meeting(x+hsp, y, obj_elevator))){					//Speed up
	if (keyboard_check(ord("D"))){
		if (hsp < maxSpeed){
			hsp += acc;
			if (hsp > maxSpeed){
				hsp = maxSpeed;	
			}
		}
		if (hsp < 0){hsp = 0;}
	}else if (keyboard_check(ord("A"))){
		if (hsp > -maxSpeed){
			hsp -= acc;
			if (hsp < -maxSpeed){
				hsp = -maxSpeed;	
			}
		}
		if (hsp > 0){hsp = 0;}
	}
}else if (move = 0 && (!place_meeting(x+hsp, y, obj_block) || place_meeting(x+hsp, y, obj_elevator))){						//Slow down
	if (hsp > 0){
		hsp -= dec;	
	}else if (hsp < 0){
		hsp += dec;
	}
}

//Gravity
if ((vsp < 6) && (!dead)){
    vsp += grav;
}

//Jumping and jump sound
if (key_jump = 1){
    if (place_meeting(x, y+1, obj_block) || (place_meeting(x, y+1, obj_platform) && vsp >= 0) || place_meeting(x, y+2, obj_elevator)){
        vsp = key_jump * -jumpSpeed;
        audio_play_sound(snd_jump, 10, false);
    }
}

//*****************************
//*******GROUNDED CHECK********
//*****************************

//Grounded check (Platform) for animations
if (place_meeting(x, y+1, obj_platform) && !place_meeting(x, y, obj_platform)){
    grounded = true;
}else{
    grounded = false;
}

  
//Horizontal flipping
if (move != 0){
    image_xscale = move;
}

//Horizontal collisions BLOCK
if (hsp != 0){
    if (place_meeting(x+hsp, y, obj_block)){
        while(!place_meeting(x+sign(hsp), y, obj_block)){
            x += sign(hsp);
        }
        hsp = 0;
    }
}

//Horizontal collisions ELEVATOR
if (hsp != 0){
    if (place_meeting(x+hsp, y, obj_elevator)){
        while(!place_meeting(x+sign(hsp), y, obj_elevator)){
            x += sign(hsp);
        }
        hsp = 0;
    }
}

//Move horizontally
x += hsp;

//Vertical collisions BLOCK
if (place_meeting(x, y+vsp, obj_block)){
    while (!place_meeting(x, y+sign(vsp), obj_block)){
        y += sign(vsp);
    }

    vsp = 0;
}

//Vertical collisions PLATFORM
if (vsp != 0){
    if (place_meeting(x, y+vsp, obj_platform) && !place_meeting(x, y, obj_platform) && vsp >= 0){
        //Bring player down to the ground exactly
        while(!place_meeting(x, y+1, obj_platform)){
            y += 1;
        }
        vsp = 0;
    }
}

//Vertical collisions ELEVATOR
if (vsp != 0){
    if (place_meeting(x, y+vsp, obj_elevator) && (vsp <= 0)){
        vsp = 1;
    }
}

//Move vertically and round position
y += vsp;
y = floor(y);
    

/* */
///Game Start Zoom Effect

if (!finish){
    if (view_zoom > 1 && !start){
        view_zoom -= .035;
    }else if (start && view_zoom > 1 && count > 0){
        view_zoom = 1;
    }
}

/* */
///Game Finish Zoom Effect -- Start Finish Music

if (finish){
    if (view_zoom < 4){
        view_zoom += .035;
    }else {
        view_zoom = 4;
    }
}

if (!audio_is_playing(snd_trashed) && view_zoom = 4){
    audio_play_sound(snd_trashed, 1, false);
}


//*****************************
//*********Animations**********
//*****************************

/* */
///Nate Animations

//Slow the animation when the player moves slow
if ((hsp < 1.9) && (hsp > -1.9) && (hsp != 0)){
	image_speed = .1;	
}else{
	image_speed = .2;	
}

if (global.playerChar = 1){
    //Run, Idle
    if ((place_meeting(x, y+1, obj_block) || (place_meeting(x, y+1, obj_platform)))){
        if (hsp != 0){
            sprite_index = spr_nate_run;
        }else if (hsp = 0 && alarm[0] = -1){
            sprite_index = spr_nate_idle;
        }
    }

    //Jump animation tree (based on vertical speed)
    if((!place_meeting(x, y+1, obj_block) && !grounded)){
        if(vsp < -3)
            sprite_index = spr_nate_jump_01;
        else if (vsp > -3 && vsp < -1)
            sprite_index = spr_nate_jump_02;
        else if (vsp > -1 && vsp < 2)
            sprite_index = spr_nate_jump_03;
        else if (vsp > 2 && vsp < 3.5)
            sprite_index = spr_nate_jump_04;
        else if (vsp > 3.5)
            sprite_index = spr_nate_jump_05;
    }
}

/* */
///Matt Animations

if (global.playerChar = 2){
    //Run, Idle
    if ((place_meeting(x, y+1, obj_block) || place_meeting(x, y+1, obj_platform))){
        if (hsp != 0){
            sprite_index = spr_matt_run;
        }else if (hsp = 0 && alarm[0] = -1){
            sprite_index = spr_matt_idle;
        }
    }

    //Jump animation tree (based on vertical speed)
    if((!place_meeting(x, y+1, obj_block) && !grounded)){
        if(vsp < -3)
            sprite_index = spr_matt_jump_01;
        else if (vsp > -3 && vsp < -1)
            sprite_index = spr_matt_jump_02;
        else if (vsp > -1 && vsp < 2)
            sprite_index = spr_matt_jump_03;
        else if (vsp > 2 && vsp < 3.5)
            sprite_index = spr_matt_jump_04;
        else if (vsp > 3.5)
            sprite_index = spr_matt_jump_05;
    }
}

/* */
///Nick Animations

if (global.playerChar = 3){
    //Run, Idle
    if ((place_meeting(x, y+1, obj_block) || place_meeting(x, y+1, obj_platform) || place_meeting(x, y+2, obj_elevator))){
        if (hsp != 0){
            sprite_index = spr_nick_run;
        }else if (hsp = 0 && alarm[0] = -1){
            sprite_index = spr_nick_idle;
        }
    }

    //Jump animation tree (based on vertical speed)
    if((!place_meeting(x, y+1, obj_block) && !grounded && !place_meeting(x, y+2, obj_elevator))){
        if(vsp < -3)
            sprite_index = spr_nick_jump_01;
        else if (vsp > -3 && vsp < -1)
            sprite_index = spr_nick_jump_02;
        else if (vsp > -1 && vsp < 2)
            sprite_index = spr_nick_jump_03;
        else if (vsp > 2 && vsp < 3.5)
            sprite_index = spr_nick_jump_04;
        else if (vsp > 3.5)
            sprite_index = spr_nick_jump_05;
    }
}

/* */
///Jesse Animations

if (global.playerChar = 4){
    //Run, Idle
    if ((place_meeting(x, y+1, obj_block) || place_meeting(x, y+1, obj_platform) || place_meeting(x, y+2, obj_elevator))){
        if (hsp != 0){
            sprite_index = spr_jesse_run;
        }else if (hsp = 0 && alarm[0] = -1){
            sprite_index = spr_jesse_idle;
        }
    }

    //Jump animation tree (based on vertical speed)
    if((!place_meeting(x, y+1, obj_block) && !grounded && !place_meeting(x, y+2, obj_elevator))){
        if(vsp < -3)
            sprite_index = spr_jesse_jump_01;
        else if (vsp > -3 && vsp < -1)
            sprite_index = spr_jesse_jump_02;
        else if (vsp > -1 && vsp < 2)
            sprite_index = spr_jesse_jump_03;
        else if (vsp > 2 && vsp < 3.5)
            sprite_index = spr_jesse_jump_04;
        else if (vsp > 3.5)
            sprite_index = spr_jesse_jump_05;
    }
}

/* */
///Mike Animations

if (global.playerChar = 5){
    //Run, Idle
    if ((place_meeting(x, y+1, obj_block) || place_meeting(x, y+1, obj_platform) || place_meeting(x, y+2, obj_elevator))){
        if (hsp != 0){
            sprite_index = spr_mike_run;
        }else if (hsp = 0 && alarm[0] = -1){
            sprite_index = spr_mike_idle;
        }
    }

    //Jump animation tree (based on vertical speed)
    if((!place_meeting(x, y+1, obj_block) && !grounded && !place_meeting(x, y+2, obj_elevator))){
        if(vsp < -3)
            sprite_index = spr_mike_jump_01;
        else if (vsp > -3 && vsp < -1)
            sprite_index = spr_mike_jump_02;
        else if (vsp > -1 && vsp < 2)
            sprite_index = spr_mike_jump_03;
        else if (vsp > 2 && vsp < 3.5)
            sprite_index = spr_mike_jump_04;
        else if (vsp > 3.5)
            sprite_index = spr_mike_jump_05;
    }
}

/* */
///View Following -- Call scr_camera_movement()

scr_camera_movement();

if (view_zoom = 1 && start){
    //Clouds
    __background_set( e__BG.X, 0, __view_get( e__VW.XView, 0 )/1.0 );
    __background_set( e__BG.Y, 0, __view_get( e__VW.YView, 0 )/1.0 - 48 );

    //Still City
    __background_set( e__BG.X, 1, __view_get( e__VW.XView, 0 )/1.1 );
    __background_set( e__BG.Y, 1, __view_get( e__VW.YView, 0 )/1.0 + 161 + yShift);
    
    //Skyline small (far)
    __background_set( e__BG.X, 2, __view_get( e__VW.XView, 0 )/1.3 );
    __background_set( e__BG.Y, 2, __view_get( e__VW.YView, 0 )/1.0 + 128 + yShift);
    
    //Skyline (middle)
    __background_set( e__BG.X, 3, __view_get( e__VW.XView, 0 )/1.4 );
    __background_set( e__BG.Y, 3, __view_get( e__VW.YView, 0 )/1.05 + 116 + yShift);

    //Skyline (close)
    __background_set( e__BG.X, 4, __view_get( e__VW.XView, 0 )/1.5 );
    __background_set( e__BG.Y, 4, __view_get( e__VW.YView, 0 )/1.1 + 16 + yShift);
    
} else if (view_zoom > 1 && !start){
    
    __background_set( e__BG.X, 0, 0 );
    __background_set( e__BG.Y, 0, (room_height - obj_display_manager.ideal_height) - 48 );
     
    //Still City
    __background_set( e__BG.X, 1, 0 );
    __background_set( e__BG.Y, 1, (room_height - obj_display_manager.ideal_height) + 161 + yShift);
    
    //Skyline small (far)
    __background_set( e__BG.X, 2, 0 );
    __background_set( e__BG.Y, 2, (room_height - obj_display_manager.ideal_height) + 128 + yShift);

    //Skyline (middle)
    __background_set( e__BG.X, 3, 0 );
    __background_set( e__BG.Y, 3, (room_height - obj_display_manager.ideal_height) / 1.05 + 116 + yShift);
    
    //Skyline (close)
    __background_set( e__BG.X, 4, 0 );
    __background_set( e__BG.Y, 4, (room_height - obj_display_manager.ideal_height) / 1.1 + 16 + yShift);
    
}

/* */
///Game Time Calculation -- Low Time Actions

//IF PAUSED -- STOP CLOCK BY EXIT
if (paused) exit;

if (!finish){
    if ((myTime > 0) && (start = true)){
        myTime = myTime - delta_time/1000000;
    } else if (myTime <= 0){
        myTime = 0;
    }
}else if (finish){
    if (audio_is_playing(snd_time_alarm)){
        audio_stop_sound(snd_time_alarm);
    }
}

//Round time for displaying in the GUI
showTime = ceil(myTime);

//Calculate minutes and seconds for display
myTimeMin = showTime div 60;
myTimeSec = showTime mod 60;

//Start Alarm with 10 sec left -- KILL PLAYER IF TIME RUNS OUT
if ((showTime <= 10) && (showTime > 0) && !finish){
    if (!audio_is_playing(snd_time_alarm)){
        audio_play_sound(snd_time_alarm, 10, true);
    }
    lowTime = true;
}else if (showTime <= 0){
    if (!dead){
        global.playerLives = -1;
        dead = true;

        audio_stop_all();
        audio_play_sound(snd_player_death, 10, false);
        scr_sprite_explode(120, 60, 1, 1, 8, 2, 5, 0, 0, 1, c_white, 0, -1);
        image_alpha = 0;
        obj_player.y -= 80;

        //***Set alarm for delayed player respawn***
        alarm[1] = 180;
    }
}else if (showTime > 10){
    lowTime = false;
}


//Update global variable for Score Bonus
global.playerTimeBonus = showTime * 5;

/* */
///Snow and Sand Collisions

//Slows the players horizontal speed down when in snow
if (place_meeting(x, y, obj_snowbank) || place_meeting(x, y, obj_sand)){
    hsp = (move / 2);
}

/* */
///Dust particles when running/jumping

//Checking for hitting the floor
var curr_coll = (place_meeting(x, y+1, obj_block) || place_meeting(x, y+1, obj_platform));
var prev_coll = (place_meeting(xprevious, yprevious + 1,obj_block) || place_meeting(xprevious, yprevious + 1,obj_platform));

//Update particle position
part_emitter_region(partDust_sys, partDust_emit, x - 4, x + 2, y + 15, y + 15, ps_shape_line, ps_distr_linear);

//If the player is running and on the ground (Not in snow/sand) -- Emit dust
if (!place_meeting(x, y, obj_snowbank) && !place_meeting(x, y, obj_sand)){
    if (hsp != 0 && (place_meeting(x, y+1, obj_block) || place_meeting(x, y+1, obj_platform))){
        part_emitter_burst(partDust_sys, partDust_emit, partDust, 2);
    }else if ((curr_coll = true) && (prev_coll = false)){
        part_emitter_burst(partDust_sys, partDust_emit, partDust, 25);
    }
}

/* */
///Sand particles while running/jumping

part_emitter_region(partSand_sys, partSand_emit, x - 4, x + 2, y + 16, y + 16, ps_shape_line, ps_distr_gaussian);

//Checking for hitting the floor
var curr_coll = place_meeting(x, y+1, obj_sand);
var prev_coll = place_meeting(xprevious, yprevious + 1, obj_sand);

if (place_meeting(x, y, obj_sand) && (move != 0) && (hsp != 0)){
    part_emitter_burst(partSand_sys, partSand_emit, partSand, 2);
}else if (place_meeting(x, y, obj_sand) && key_jump){
    part_emitter_burst(partSand_sys, partSand_emit, partSand, 25);
}else if ((curr_coll = true) && (prev_coll = false)){
    part_emitter_burst(partSand_sys, partSand_emit, partSand, 25);
}

/* */
///Snow particles while running/jumping

part_emitter_region(partSnow_sys, partSnow_emit, x - 4, x + 2, y + 16, y + 16, ps_shape_line, ps_distr_gaussian);

//Checking for hitting the floor
var curr_coll = place_meeting(x, y+1, obj_snowbank);
var prev_coll = place_meeting(xprevious, yprevious + 1, obj_snowbank);

if (place_meeting(x, y, obj_snowbank) && (move != 0) && (hsp != 0)){
    part_emitter_burst(partSnow_sys, partSnow_emit, partSnow, 2);
}else if (place_meeting(x, y, obj_snowbank) && key_jump){
    part_emitter_burst(partSnow_sys, partSnow_emit, partSnow, 25);
}else if ((curr_coll = true) && (prev_coll = false)){
    part_emitter_burst(partSnow_sys, partSnow_emit, partSnow, 25);
}