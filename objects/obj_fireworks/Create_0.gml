/// @description Particle System

partFirework_sys = part_system_create();

//Rocket Particle
partRocket = part_type_create();
part_type_sprite(partRocket, spr_spark, false, false, false);
part_type_size(partRocket, .1, .1, 0, 0);
part_type_direction(partRocket, 80, 100, 0, 0);
part_type_speed(partRocket, 5, 7, 0, 0);
part_type_life(partRocket, room_speed * .9, room_speed * 1.2);
part_type_gravity(partRocket, .08, 270);


//Trail Particle
partTrail = part_type_create();
part_type_sprite(partTrail, spr_spark, false, false, false);
part_type_gravity(partTrail, .08, 270);
part_type_life(partTrail, room_speed * .75, room_speed * 1.25);
part_type_alpha2(partTrail, .4, 0);
part_type_size(partTrail, .1, .1, -.01, 0);

//Explosion Particle
partExplosion = part_type_create();
part_type_sprite(partExplosion, spr_spark, false, false, false);
part_type_size(partExplosion, .075, .1, -.001, 0);
part_type_alpha2(partExplosion, 1, 0);
part_type_direction(partExplosion, 0, 359, 0, 0);
part_type_speed(partExplosion, 1.5, 2.5, 0, 0);
part_type_life(partExplosion, 15, 45);
part_type_gravity(partExplosion, .08, 270);
part_type_colour_rgb(partExplosion, 100, 255, 100, 255, 100, 255);


//Sequence
part_type_step(partRocket, 1, partTrail);
part_type_death(partRocket, 150, partExplosion);

//Emitter
partFirework_emit = part_emitter_create(partFirework_sys);
part_emitter_region(partFirework_sys, partFirework_emit, __view_get( e__VW.XView, 0 ), __view_get( e__VW.WView, 0 ), room_height, room_height, ps_shape_line, ps_distr_linear);
part_emitter_stream(partFirework_sys, partFirework_emit, partRocket, -35);

