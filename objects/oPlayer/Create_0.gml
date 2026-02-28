x_speed = 0;
y_speed = 0;
walk_speed = 1.5;
if room_get_name(room) == "Room1" {
	alarm[0] = 60 * 10;
	draw_text(25,150,"You are being timed!");
}
else if room_get_name(room) == "Room2" {
	alarm[0] = 60 * 10;
}
else if room_get_name(room) == "Room3" {
	alarm[0] = 60 * 25;
}