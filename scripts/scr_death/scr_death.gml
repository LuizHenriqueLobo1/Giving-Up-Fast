function scr_death() {
	if(place_meeting(x, y, obj_enemy)) {
		audio_play_sound(sou_game_over, 1000, false);
		room_goto(room_game_over);
		global.qtd_deaths++;
	}
}

function scr_pause() {
	var back_menu = keyboard_check_pressed(vk_escape);
	if(back_menu)
		room_goto(room_pause);
}