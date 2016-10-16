var level = argument0;
var spawnAsteroids = argument1;
var boxes = argument2;
var aliens = argument3;

if (!instance_exists(obj_player)) {
    instance_create(room_width / 2, room_height - 200, obj_player);
};
if (!instance_exists(obj_spacestation)) {
    instance_create(room_width / 2, room_height / 2, obj_spacestation);
};

if instance_exists(obj_asteroid){
    with (obj_asteroid) {
        instance_destroy();
        };
    };
        
for (i = 0; i <= spawnAsteroids + level; i++) {
        instance_create(random(room_width), random(room_height), obj_asteroid_l);
};
for (i = 0; i <= boxes + level; i++) {
        instance_create(random(room_width), random(room_height), obj_boxes);
    };

global.game = states.play;
