//Keyboard Controls
var key_up = keyboard_check(vk_up);
var key_down = keyboard_check(vk_down);
var key_left = keyboard_check(vk_left);
var key_right = keyboard_check(vk_right);

//Gamepad Controls
var gp_up = gamepad_button_check(0, gp_padu);
var gp_down = gamepad_button_check(0, gp_padd);
var gp_left = gamepad_button_check(0, gp_padl);
var gp_right = gamepad_button_check(0, gp_padr);


//Movement Code
if (key_up == true || gp_up == true){
    if speed != argument0 {
        obj_player.speed += 1;
        obj_player.invul = false;
        };
    };
if (key_down == true || gp_down == true){
    if speed != -argument0 {
        obj_player.speed -= 1;
        obj_player.invul = false;
        };
    };
if (key_right == true || gp_right == true){
    obj_player.direction -= argument1;
    };
    
if (key_left == true || gp_left == true) {
    obj_player.direction += argument1;
    };
