/// @description Variable Declaration

//Fade out
fadeout = 0;

//Movement variables
t = 0;
increment = 6;
amplitude = 8;

yy = y;

//Particle system for finish line SPARKS

partFinish_sys = part_system_create();

//Finish particle
partFinish = part_type_create();

//part_type_shape(partRain, pt_shape_line);
part_type_sprite(partFinish, spr_spark, false, false, false);
part_type_size(partFinish, 0.01, 0.04, 0, 0);
part_type_colour3(partFinish, c_orange, c_yellow, c_white);
part_type_alpha2(partFinish, 1, .95);
part_type_gravity(partFinish, 0.02, 270);
part_type_speed(partFinish, 0.1, 0.5, 0, 0);
part_type_direction(partFinish, 0, 270, 0, 0);
part_type_life(partFinish, room_speed / 2, room_speed * 1.5);

//Create Emitter
partFinish_emit = part_emitter_create(partFinish_sys);


