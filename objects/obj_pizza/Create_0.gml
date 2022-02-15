/// @description Create 'touched' variable + movement

touched = false;

//Movement variables

//Random value array
randomVals[0] = -4;
randomVals[1] = -2;
randomVals[2] = 2;
randomVals[3] = 4;


t = 0;
increment = randomVals[irandom_range(0, 3)];    //Randomize speed from array of values
amplitude = 3;

yy = y;

