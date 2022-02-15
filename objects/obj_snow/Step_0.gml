/// @description Update Emitter Location on death and move parallax
if (obj_player.dead = true){
    part_emitter_region(partSnow_sys, partSnow_emit, global.checkX - 500, 500, 0, 300, ps_shape_rectangle, ps_distr_linear);
    part_emitter_stream(partSnow_sys, partSnow_emit, partSnow, 2);
}else{
    part_emitter_region(partSnow_sys, partSnow_emit, -1000, 10000, 0, 0, ps_shape_line, ps_distr_linear);
    part_emitter_stream(partSnow_sys, partSnow_emit, partSnow, 6);
}

//Parallax Motion
part_system_position(partSnow_sys, __background_get( e__BG.X, 1 ) / 1.5, 0);

