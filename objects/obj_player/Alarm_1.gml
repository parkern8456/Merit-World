/// @description Respawn player after 2 sec delay
if (!paused){
    scr_spawn_player();
}else{
    alarm[1] = 120;
}

