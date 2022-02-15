/// @description Draw GUI elements (Score/Controls)
/// @param Score/Controls

//Draw GUI CONTAINTER BOX
draw_set_alpha(.5);
draw_set_color(c_gray);
draw_rectangle(4, 4, 100, 56, false);

//Reset draw for GUI text
draw_set_alpha(1);
draw_set_halign(fa_left);
draw_set_font(fnt_type);
draw_set_color(c_white);

//Display Character Name
draw_set_halign(fa_right);
if (global.playerChar = 1){
    draw_text(global.screen_width - 8, 7, string_hash_to_newline("Nate"));
    draw_sprite(spr_nate_head, 0, global.screen_width - 28, 20);
}else if (global.playerChar = 2){
    draw_text(global.screen_width - 8, 7, string_hash_to_newline("Matt"));
    draw_sprite(spr_matt_head, 0, global.screen_width - 28, 20);
}else if (global.playerChar = 3){
    draw_text(global.screen_width - 8, 7, string_hash_to_newline("Nick"));
    draw_sprite(spr_nick_head, 0, global.screen_width - 28, 20);
}else if (global.playerChar = 4){
    draw_text(global.screen_width - 4, 7, string_hash_to_newline("Jesse"));
    draw_sprite(spr_jesse_head, 0, global.screen_width - 28, 20);
}else if (global.playerChar = 5){
    draw_text(global.screen_width - 8, 7, string_hash_to_newline("Mike"));
    draw_sprite(spr_mike_head, 0, global.screen_width - 28, 20);
}

draw_set_halign(fa_left);

//Draw Top-Left GUI Text/Icons

//LIVES
draw_text(8, 8, string_hash_to_newline("Lives :"));

//Draw empty lives (always under full)
for(i=0; i < 3; i++){
    draw_sprite_ext(spr_life_empty, 0, (i*16)+50, 7, .5, .5, 0, c_white, 1);
}

//Draw full lives (over empty--number of lives)
for(i=0; i < global.playerLives; i++){
    draw_sprite_ext(spr_life_full, 0, (i*16)+50, 7, .5, .5, 0, c_white, 1);
}

//Draw and Align "Score:" and "Time:" to the left of the GUI box
draw_text(8, 24, string_hash_to_newline("Score :"));
draw_text(8, 40, string_hash_to_newline("Time :"));

//Align SCORE and TIME display to the right of GUI box
draw_set_halign(fa_right);

//SCORE
draw_text(96, 24, string_hash_to_newline(string(global.playerScore)));

//TIME
if (myTimeSec = 0){
    draw_text(96, 40, string_hash_to_newline(string(myTimeMin) + " : 00"));
}else if ((myTimeSec < 10) && (myTimeSec > 0)){
    draw_text(96, 40, string_hash_to_newline(string(myTimeMin) + " : 0" + string(myTimeSec)));
}else {
    draw_text(96, 40, string_hash_to_newline(string(myTimeMin) + " : " + string(myTimeSec)));
}



//Display Game Start Countdown
draw_set_font(fnt_countdown);
draw_set_halign(fa_center);

//Draw Black Text
draw_set_color(c_black);
draw_set_alpha(.5);
if (count > 1){
    draw_text((global.screen_width / 2) + 2, (global.screen_height / 2) - 62, string_hash_to_newline(count - 1));
} else if (count > 0){
    draw_text((global.screen_width / 2) + 2, (global.screen_height / 2) - 62, string_hash_to_newline("GO!"));
}

//Draw White Text
draw_set_color(c_white);
draw_set_alpha(1);
if (count > 1){
    draw_text(global.screen_width / 2, (global.screen_height / 2) - 64, string_hash_to_newline(count - 1));
} else if (count > 0){
    draw_text(global.screen_width / 2, (global.screen_height / 2) - 64, string_hash_to_newline("GO!"));
}

//Display low time countdown
if ((lowTime) && (!finish)){
    //Draw Black Text
    draw_set_color(c_black);
    draw_set_alpha(.25);
    draw_text((global.screen_width / 2) + 2, (global.screen_height / 2) - 62, string_hash_to_newline(showTime));

    //Draw White Text
    draw_set_color(c_white);
    draw_set_alpha(.5);
    draw_text((global.screen_width / 2), (global.screen_height / 2) - 64, string_hash_to_newline(showTime));
}

///Draw On-Screen Controls

draw_set_alpha(.5);

if (!finish || (!finish && !dead)){
    //A Button
    if ((!keyboard_check(vk_space)) || !start || paused){
        draw_sprite(spr_a_up, 0, global.screen_width - 75, global.screen_height - 72);
    }else if ((keyboard_check(vk_space)) && start && !paused){
        draw_sprite(spr_a_down, 0, global.screen_width - 73, global.screen_height - 70);
    }
    
    //Left Button
    if (key_left = 0){
        draw_sprite(spr_left_up, 0, 10, global.screen_height - 72);
    }else if (key_left = -1 && start){
        draw_sprite(spr_left_down, 0, 12, global.screen_height - 70);
    }
    
    //Right Button
    if (key_right = 0){
        draw_sprite(spr_right_up, 0, 85, global.screen_height - 72);
    }else if (key_right = 1 && start){
        draw_sprite(spr_right_down, 0, 87, global.screen_height - 70);
    }
}

draw_set_alpha(1);


///Draw GUI Buttons

//Draw Bounding Box For Controls
draw_set_alpha(.5);
draw_set_color(c_gray);
draw_rectangle(global.screen_width - 35, 40, global.screen_width - 6, 99, false);
draw_set_alpha(1);

//Pause Button
if (!paused){
    if (!keyboard_check(ord("P"))){
        draw_sprite_ext(spr_pause, 0, global.screen_width - 27, 46, 1, 1, 0, c_black, .25);
        draw_sprite(spr_pause, 0, global.screen_width - 28, 45);
    }else if (keyboard_check(ord("P"))){
        draw_sprite(spr_pause, 0, global.screen_width - 27, 46);
    }
}else{
    draw_sprite_ext(spr_pause, 0, global.screen_width - 27, 46, 1, 1, 0, c_black, .25);
    draw_sprite(spr_pause, 0, global.screen_width - 28, 45);
}
    
//Sound on Button
if (global.sound){
    if (!keyboard_check(ord("M"))){
        draw_sprite_ext(spr_sound_on, 0, global.screen_width - 27, 79, 1, 1, 0, c_black, .25);
        draw_sprite(spr_sound_on, 0, global.screen_width - 28, 78);
    }else if (keyboard_check(ord("M"))){
        draw_sprite(spr_sound_on, 0, global.screen_width - 27, 79);
    }
}else if (!global.sound){
    if (!keyboard_check(ord("M"))){
        draw_sprite_ext(spr_sound_off, 0, global.screen_width - 27, 79, 1, 1, 0, c_black, .25);
        draw_sprite(spr_sound_off, 0, global.screen_width - 28, 78);
    }else if (keyboard_check(ord("M"))){
        draw_sprite(spr_sound_off, 0, global.screen_width - 27, 79);
    }
}

///Pause Overlay

if (paused){
    draw_set_color(c_black);
    draw_set_alpha(.5);
    draw_rectangle(0, 0, room_width, room_height, 0);
    draw_set_halign(fa_center);
    draw_set_font(fnt_level_intro_text);
    draw_set_color(c_white);
    draw_set_alpha(1);
    draw_text(global.screen_width/2, global.screen_height/2, "Paused");
}
