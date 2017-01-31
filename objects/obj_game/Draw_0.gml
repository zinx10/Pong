/// @description Draw Score
draw_set_font(fo_score);
var _room_center = (room_width / 2);
draw_text(_room_center, 24, "-");
draw_text(_room_center - 24, 24, player1_score);
draw_text(_room_center + 24, 24, player2_score);