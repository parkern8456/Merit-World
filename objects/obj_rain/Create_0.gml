/// @description LIGHTNING VARIABLES
flash = false;
flash_chance = 0;
flash_time = 0;
alarm[0] = room_speed * 3;

///Rain System

partRain_sys = part_system_create();

//Rain Particle
partRain = part_type_create();
part_type_sprite(partRain, spr_raindrop, false, false, false);
part_type_size(partRain, 0.07, 0.1, 0, 0);
part_type_alpha2(partRain, .7, .4);
part_type_gravity(partRain, 0.1, 290);
part_type_speed(partRain, 0.5, 0.5, 0, 0);
part_type_direction(partRain, 250, 330, 0, 1);
part_type_orientation(partRain, 290, 290, 0, 0, 0);
part_type_life(partRain, 40, 180);

//Create Emitter
partRain_emit = part_emitter_create(partRain_sys);

//Change the depth of the rain particles
part_system_depth(partRain_sys, -11);

//Fill room with particles before player enters room
part_emitter_region(partRain_sys, partRain_emit, obj_player.x - 1000, obj_player.x + 1000,__view_get( e__VW.YView, 0 )-32, __view_get( e__VW.YView, 0 )-32, spr_raindrop, ps_distr_linear);
part_emitter_stream(partRain_sys, partRain_emit, partRain, 25);

repeat(room_speed * 5){
    part_system_update(partRain_sys);
}

