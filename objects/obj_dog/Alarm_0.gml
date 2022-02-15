/// @description Random chance for dog to stand/sit

change_state = irandom_range(1, 4);

if (change_state = 4){
    if (sit){
        sit = false;
        y += 1;
    }else{
        sit = true;
        y -= 1;
    }
}

alarm[0] = room_speed * 3;

