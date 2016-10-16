if (place_meeting(x, y, obj_asteroid)){
    state = states.death;
    audio_play_sound(snd_death, 4, false);
    for (i = 0; i <= irandom_range(5, 10); i++){
        instance_create(x, y, obj_pens);
        };
    scr_respawnPlayer(respawnTime);
    }
    
if (!cargo){
    if (place_meeting(x, y, obj_boxes)){
        cargo = true;
        audio_play_sound(snd_pickup, 1, 0);
        with (instance_nearest(x, y, obj_boxes)){
            instance_destroy();
            };
    };
};
else if (cargo){
    if (place_meeting(x, y, obj_boxes)){
        if (!audio_is_playing(snd_full)){
            audio_play_sound(snd_full, 1, 0);
            };
        };
    };

if (cargo){
    if (place_meeting(x, y, obj_spacestation)){
        cargo = false;
        audio_play_sound(snd_dropoff, 1, 0);
        score += 25;
        };
    };
