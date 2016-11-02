if (argument0 == 0) {
    global.game = states.levelInit;
    audio_stop_all();
    };
else if (argument0 == 1) {
    scr_howToPlay();
    };
else if (argument0 == 2) {
    game_end();
    };
