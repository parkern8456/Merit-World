/// @description Snow System

partSnow_sys = part_system_create();

//Snow Particle
partSnow = part_type_create();
part_type_sprite(partSnow, spr_snowflake, false, false, false);
part_type_size(partSnow, 0.02, 0.03, 0, 0);
part_type_alpha2(partSnow, .9, .8);
part_type_speed(partSnow, 0.75, 1, 0, 0);
part_type_direction(partSnow, 270, 270, 0, 12);
part_type_orientation(partSnow, 270, 270, 0, 0, 0);
part_type_life(partSnow, 500, 750);

//Create Emitter
partSnow_emit = part_emitter_create(partSnow_sys);

//Change the depth of the rain particles
part_system_depth(partSnow_sys, 15);

//Fill room with particles before player enters room
part_emitter_region(partSnow_sys, partSnow_emit, -1000, 1000, 0, 360, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(partSnow_sys, partSnow_emit, partSnow, 10);

repeat(room_speed * 5){
    part_system_update(partSnow_sys);
}

