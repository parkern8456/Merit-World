/// @description Object y motion and Particle position -- Increase fadeout Once touched

if (!obj_player.paused){
    t = (t + increment) mod 360;
    shift = amplitude * dsin(t);
 
    //Clone the movement from the object's speed and direction
    yy += vspeed;
    y = yy + shift; //vertical wave motion
}

///Player collisions

if (place_meeting(x, y-2, obj_player)){
    obj_player.y = y - 16;
    obj_player.vsp = 0;
}

