var key_shoot = keyboard_check_pressed(vk_space);
var gp_shoot = gamepad_button_check_pressed(0, gp_face1);

if (key_shoot == true || gp_shoot = true){
    instance_create(x, y, obj_pshot);
    audio_play_sound(snd_shoot, 999, false);
    canShoot = false;
    alarm[0] = shotCooldown;
    }
    

