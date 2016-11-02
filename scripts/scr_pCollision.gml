if (place_meeting(x, y, obj_asteroid) && invul == false){
    state = states.death;
    lives -= 1;
    audio_play_sound(snd_death, 4, false);
    for (i = 0; i <= cargo; i++){
        instance_create(x, y, obj_pens);
        };
    scr_respawnPlayer(respawnTime);
    }
    
if (cargo != 5){
    if (place_meeting(x, y, obj_pens)){
        cargo += 1;
        audio_play_sound(snd_pickup, 1, 0);
        with (instance_nearest(x, y, obj_pens)){
            instance_destroy();
            };
    };
};
else {
    if (place_meeting(x, y, obj_pens)){
        if (!audio_is_playing(snd_full)){
            audio_play_sound(snd_full, 1, 0);
            };
        };
    };

if (cargo){
    if (place_meeting(x, y, obj_spacestation)){
        for (i = 0; i < cargo; i++) {
            score += 25;
            };
        cargo = 0;
        audio_play_sound(snd_dropoff, 1, 0);
        };
    };
