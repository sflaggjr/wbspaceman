level = ds_grid_create(3, 10);
for (i = 0; i <= ds_grid_height(level); i++) {
    for (j = 0; j <= ds_grid_width(level); j++) {
        if (i == 0) {
            ds_grid_add(level, i, j, argument0 + i);
             }
        else if (i == 1) {
            ds_grid_add(level, i, j, argument1 + i);
            }
        else {
            ds_grid_add(level, i, j, argument2 + i);
            }  
    }
};
global.currentAsteroid = ds_grid_get(level, 0, argument0);
global.currentOffices = ds_grid_get(level, 1, argument0);
global.currentAliens = ds_grid_get(level, 2, argument0);

