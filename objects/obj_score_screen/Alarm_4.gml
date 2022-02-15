/// @description Start fade transition and change room once faded

allow_touch = false;

if (fadeout < 1){
    fadeout += .0075;
    alarm[4] = 1;
}else if (fadeout >= 1){
	// Level transition based on level
	if(global.playerChar = 1){
		room_goto(rm_intro_03);
	}else if (global.playerChar = 2){
		room_goto(rm_intro_05);
	}else if (global.playerChar = 3){
		room_goto(rm_intro_07);
	}else if (global.playerChar = 4){
		room_goto(rm_intro_09);
	}else {
		room_goto(rm_intro_11);
	}
}