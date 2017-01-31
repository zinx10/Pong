/// @description Start movement

// Stats
start_speed = 4;
move_speed = start_speed;
move_speed_max = 16;
start_dir = 0;
start_dir_change = 45
move_dir = start_dir + random_range(-start_dir_change, start_dir_change);

motion_set(move_dir, move_speed);