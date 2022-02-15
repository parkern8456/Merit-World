// runonce
if (runonce == 0) {
    // Give the particle motion
    direction = random(360);
    spd = random_range(max_speed,min_speed);
    motion_set(direction,spd);
    // Give the particle life within a range
    life = irandom_range(max_life, min_life);
    // Give the particle a random spin speed based off the one provided
    spin_speed = irandom(spin);
    // Give the particle a random fade speed based off the one provided
    fading = random(fade_amt);
    // Give the particle a random blend speed based off the one provided
    fader = random(color_fader);
    runonce = 1;
}
// Implode the sprite
if (implode == 1) {
    if (spd > 0) motion_set(direction,spd);     // Normal, explode outward
    if (spd < 0) {
        move_towards_point(center_x, center_y, -spd);                               // Move towards the center of the sprite
        if (point_distance(x,y, center_x, center_y) < abs(spd)) instance_destroy(); // If were close to the center, destroy
    }
    spd = spd - current_speed_subtract;     // Make the speed slower and slower until negative
    current_speed_subtract += speed_sub;    // Make the amount subtracted from the speed higher
}


// Life
if (life <= 0) {
    instance_destroy();
} else {
    life--;
}

// Rotate the particle
rotation += spin_speed;

// Fade the particle
if (fade == 1) {
    alpha -= fading;                    // take away from the alpha value
    if (alpha <= 0) instance_destroy(); // If you cant see the particle, destroy it
}

// Blend the Colors
if (fade_to_color == 1) {
    current_color = merge_color(c_white, end_color, current_color_fade);    // Make the color
    current_color_fade += fader;                                            // Add to the blend amt
    if (current_color_fade >= 1) current_color_fade = 1;                    // Cap the blend amount
    if (current_color_fade <= 0) current_color_fade = 0;                    // Cap the blend amount
}


