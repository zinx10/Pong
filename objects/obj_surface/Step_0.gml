/// @description Do maths

if(!surface_exists(my_surf)) {
	my_surf = surface_create(room_width, room_height);
}

var _xrat = 0;
var _yrat = 0;
xnew = 0;
ynew = 0;

with(obj_paddle) {
	//_xrat = (y/room_width) * 1;
	//_yrat = (x/room_height) * 1;
	_xrat = (x/room_width);
	_yrat = (y/room_height);
}

xnew = _yrat * room_width // room_height;
ynew = _xrat * room_height // room_width;

show_debug_message("("+string(xnew)+","+string(ynew)+")");

surface_set_target(my_surf);

draw_clear(c_black);

for(var i = 0; i < instance_number(obj_paddle); i++) {
	var inst = instance_find(obj_paddle, i);
	with(inst) {
		draw_sprite_ext(sprite_index, image_index, other.xnew, other.ynew + 32, 1, 1, 90, c_white, 1);
	}
}

with(obj_ball) {
	_xrat = (x/room_width);
	_yrat = (y/room_height);
}

xnew = _yrat * room_width // room_height;
ynew = _xrat * room_height // room_width;

with(obj_ball) {
	draw_sprite(sprite_index, image_index, y, x);
}

surface_reset_target();