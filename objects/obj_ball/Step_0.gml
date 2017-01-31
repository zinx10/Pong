/// @description Ball code

// Collision Check
if(place_meeting(x, y, obj_paddle)) {
	var _object = instance_nearest(x, y, obj_paddle);
	/*
	var _direction;
	if(x < (room_width / 2)) {
		_direction = (_object.y - y);
	}
	else {
		_direction = ((180 - _object.y) + y - 45);
	}
	*/
	var _direction = (x < (room_width / 2)) ? (_object.y - y + 45) : ((180 - _object.y) + y - 45);
	move_dir = (_direction);
	move_speed = clamp(move_speed + 1, 0, move_speed_max);
	motion_set(move_dir, move_speed);
}

// Bounce off of floor and ceiling
var _top = sprite_get_bbox_top(sprite_index) - 1;
var _center = sprite_get_yoffset(sprite_index);

if (y <= _center || y >= (room_height - _center)) {
	move_dir = (360 - move_dir);
	motion_set(move_dir, move_speed);
}