/// @description Start Concert music --- Stop all other sounds
audio_stop_all();
audio_play_sound(snd_wire, 10, false);
audio_play_sound(snd_crowd, 10, false);


//Set view position
__view_set( e__VW.XView, 0, (room_width / 2) - (__view_get( e__VW.WView, 0 ) / 2) );
__view_set( e__VW.YView, 0, room_height - __view_get( e__VW.HView, 0 ) );