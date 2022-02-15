/// @description Update Emitter Location
part_emitter_region(partRain_sys,partRain_emit, obj_player.x - 2000, obj_player.x + 2000, __view_get( e__VW.YView, 0 )-32, __view_get( e__VW.YView, 0 )-32, ps_shape_line, ps_distr_linear);
part_emitter_stream(partRain_sys, partRain_emit, partRain, 15);

if (obj_player.dead = true){
    part_emitter_region(partRain_sys,partRain_emit, global.checkX - 1000, obj_player.x + 1000, __view_get( e__VW.YView, 0 )-32, __view_get( e__VW.YView, 0 )-32, ps_shape_line, ps_distr_linear);
    part_emitter_stream(partRain_sys, partRain_emit, partRain, 15);
}

