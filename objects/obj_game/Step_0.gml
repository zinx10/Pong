/// @description Score the ball

// Scoring the ball
var _left = sprite_get_bbox_left(obj_ball.sprite_index) + 1;
if(obj_ball.x > room_width) {
	player1_score++;
	if(player1_score >= 10) {
		game_over();
	}
	else {
		obj_ball.start_dir = 0;
		ball_reset();
	}
}
else if(obj_ball.x < -_left) {
	player2_score++;
	if(player2_score >= 10) {
		game_over();
	}
	else {
		obj_ball.start_dir = 180;
		ball_reset();
	}
}