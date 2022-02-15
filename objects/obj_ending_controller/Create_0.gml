/// @description Variable Declaration

//Curtain Variables
drawCurtains = false;
curtainsDown = false;
curtainPos = room_height - __view_get( e__VW.HView, 0 );

//Fade variables
textAlpha = 0;
fadeAlpha = 0;
fadeFlag = false;
volumeFade = 1;

///Timer For Curtain Call At The End Of Song

alarm[0] = room_speed * 180;

