/// @description Variable Declaration

//Game Time variables
myTime = 0;
showTime = myTime;
myTimeSec = 0;
myTimeMin = 0;
lowTime = false;

paused = false;

//Player collision check
grounded = false;
wall = false;

//View variables
image_speed = .2;
view_zoom = 5;
view_max_zoom = 5;
shake = 0;
yShift = 40;

//My variables
grav = .2;
hsp = 0.0;
vsp = 0;
jumpSpeed = 4;
dec = 0.1;
acc = 0.2;
maxSpeed = 2;

dead = false;
finish = false;

//Start countdown variables
start = false;
count = 4;
alarm[2] = room_speed * 1;

//Controller check on create
controller = gamepad_is_connected(0);

///Virtual Key assignment

//A button
virtual_key_add(global.screen_width - 75, global.screen_height - 72, 60, 63, vk_space);

//Left button
virtual_key_add(10, global.screen_height - 72, 60, 63, ord("A"));

//Right button
virtual_key_add(85, global.screen_height - 72, 60, 63, ord("D"));

//Pause button
virtual_key_add(global.screen_width - 27, 46, 16, 16, ord("P"));
virtual_key_add(0, 0, global.screen_width - 35, global.screen_height, ord("H"));
virtual_key_add(global.screen_width - 35, 100, 30, global.screen_height - 100, ord("G"));

//Sound button
virtual_key_add(global.screen_width - 27, 79, 16, 16, ord("M"));

///Running Dust particle system

partDust_sys = part_system_create();

//Rain Particle
partDust = part_type_create();
part_type_sprite(partDust, spr_spark, false, false, false);
part_type_size(partDust, 0.05, 0.07, 0, 0);
part_type_colour1(partDust, c_white);
part_type_alpha2(partDust, .20, .10);
part_type_gravity(partDust, 0.002, 90);
part_type_speed(partDust, 0.25, 0.5, 0, 0);
part_type_direction(partDust, 0, 180, 0, 0);
part_type_life(partDust, 10, 30);

//Create Emitter
partDust_emit = part_emitter_create(partDust_sys);

///Running Sand particle system

sandColor = make_colour_rgb(227, 173, 63);

partSand_sys = part_system_create();

//Rain Particle
partSand = part_type_create();
part_type_sprite(partSand, spr_spark, false, false, false);
part_type_size(partSand, 0.05, 0.1, 0, 0);
part_type_colour1(partSand, sandColor);
part_type_alpha2(partSand, 1, .9);
part_type_gravity(partSand, 0.1, 270);
part_type_speed(partSand, 1, 1.75, 0, 0);
part_type_direction(partSand, 0, 180, 0, 0);
part_type_life(partSand, 15, 30);

//Create Emitter
partSand_emit = part_emitter_create(partSand_sys);

//Change the depth of the rain particles
part_system_depth(partSand_sys, 4);

///Running Snow particle system

snowColor = make_colour_rgb(245, 245, 255);

partSnow_sys = part_system_create();

//Rain Particle
partSnow = part_type_create();
part_type_sprite(partSnow, spr_spark, false, false, false);
part_type_size(partSnow, 0.05, 0.1, 0, 0);
part_type_colour1(partSnow, snowColor);
part_type_alpha2(partSnow, 1, .9);
part_type_gravity(partSnow, 0.1, 270);
part_type_speed(partSnow, 1, 1.75, 0, 0);
part_type_direction(partSnow, 0, 180, 0, 0);
part_type_life(partSnow, 15, 30);

//Create Emitter
partSnow_emit = part_emitter_create(partSnow_sys);

//Change the depth of the rain particles
part_system_depth(partSnow_sys, 4);

