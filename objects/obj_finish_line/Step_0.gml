/// @description Object y motion and Particle position -- Increase fadeout Once touched

t = (t + increment) mod 360;
shift = amplitude * dsin(t);
 
//Clone the movement from the object's speed and direction
yy += vspeed;
if (obj_player.finish = false){
    y = yy + shift; //vertical wave motion
}

//Update particle position
if (obj_player.finish = false){
    part_emitter_region(partFinish_sys, partFinish_emit, x-12, x+4, y, y-1, ps_shape_ellipse, ps_distr_gaussian);
    part_emitter_stream(partFinish_sys, partFinish_emit, partFinish, 1);
}


//Fadeout once the player collides with the finishline
if ((obj_player.finish = true) && (obj_player.view_zoom = 4)){
    fadeout += .0075;
} 

///Sprite based on player - instrument

if (global.playerChar = 1){
    sprite_index = spr_nate_guitar;
}else if (global.playerChar = 2){
    sprite_index = spr_bass;
}else if (global.playerChar = 3){
    sprite_index = spr_drums;
}else if (global.playerChar = 4){
    sprite_index = spr_jesse_guitar;
}else if (global.playerChar = 5){
    sprite_index = spr_mike_mic;
}

///Advance to Score Screen once zoom and fadeout is done (destroy particle system for sparks)

if ((obj_player.view_zoom >= 4) && (fadeout >= 1)){
    //Destroy particles and advance to score screen
    scr_destroy_particles();
    room_goto(rm_score_screen);
}

