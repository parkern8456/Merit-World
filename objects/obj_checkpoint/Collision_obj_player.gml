/// @description Update checkpoint on collide with obj_checkpoint

if (sprite_index != spr_checkpoint_clear){
    //Update checkpoint coord
    global.checkX = x - 16;
    global.checkY = y - 32;
    
    //Update BG progress
    global.checkX_BG_far = __background_get( e__BG.X, 0 );
    global.checkX_BG = __background_get( e__BG.X, 1 );
    global.checkX_BG_close = __background_get( e__BG.X, 2 );
    
    //Give player points for checkpoint
    global.playerScore += 1000;
    
    //Change checkpoint sprite -- play checkpoint sound
    audio_play_sound(snd_checkpoint, 100, false);
    sprite_index = spr_checkpoint_clear;
}

