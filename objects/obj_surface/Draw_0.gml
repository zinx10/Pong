/// @description Draw the surface

if(!surface_exists(my_surf)) {
	my_surf = surface_create(room_width, room_height);
}

draw_surface(my_surf, 0, 0);