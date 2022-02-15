/// @description Destroy object once the plus one animation finishes

if (image_index = 47){
    instance_destroy();
}

///Object y motion and Particle position -- Increase fadeout Once touched

t = (t + increment) mod 360;
shift = amplitude * dsin(t);
 
//Clone the movement from the object's speed and direction
yy += vspeed;
y = yy + shift; //vertical wave motion

