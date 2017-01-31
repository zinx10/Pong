/// @description Move the paddle
// You can write your code in this editor

if(keyboard_check(key_up)) {
	y -= move_speed;
}
if(keyboard_check(key_down)) {
	y += move_speed;
}

var _center = sprite_get_bbox_bottom(sprite_index) + 1;
y = clamp (y, 0, room_height - _center);










// DEBUG CODE
if(keyboard_check_pressed(vk_f12)) {
	room_restart ();
}