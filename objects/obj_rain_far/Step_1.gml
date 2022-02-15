/// @description Update Emitter Location
part_emitter_region(partRain_sys,partRain_emit, obj_player.x - 2000, obj_player.x + 2000, -32, -32, ps_shape_line, ps_distr_linear);
part_emitter_stream(partRain_sys, partRain_emit, partRain, 20);

//Parallax Motion
part_system_position(partRain_sys, __background_get( e__BG.X, 2 )/1.4, -32);

if (obj_player.dead = true){
    part_emitter_region(partRain_sys,partRain_emit, global.checkX - 1000, obj_player.x + 1000, -32, -32, ps_shape_line, ps_distr_linear);
    part_emitter_stream(partRain_sys, partRain_emit, partRain, 20);
}

