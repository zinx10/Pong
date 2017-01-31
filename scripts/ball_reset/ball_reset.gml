with(obj_ball) {
	x = xstart;
	y = ystart;
	move_speed = start_speed;
	move_dir = start_dir + random_range(-start_dir_change, start_dir_change);
	motion_set(move_dir, move_speed);
}