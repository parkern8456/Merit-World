/// @description Movement variables

//Random value array
randomVals[0] = -1;
randomVals[1] = -.8;
randomVals[2] = -.6;
randomVals[3] = .6;
randomVals[4] = .8;
randomVals[5] = 1;
randomVals[6] = 1.1;
randomVals[7] = -1.1;

t = 0;
increment = randomVals[irandom_range(0, 7)];    //Randomize speed from array of values
amplitude = 48;

yy = y;

