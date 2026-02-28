x_speed = 0;
y_speed += 0.3;

if keyboard_check(vk_right) {
	x_speed = walk_speed;
	image_xscale = -1;
}

else if keyboard_check(vk_left) {
	x_speed = -walk_speed;
	image_xscale = 1;
}

if instance_exists(oPlat) {
	if oPlat.colliding == true {
		if (place_meeting(x, y+1, oPlat)) {
			if (keyboard_check_pressed(vk_up)) {
				y_speed = -4;
			}
			else {
				y_speed = 0;
			}
		}
	}
}

if (place_meeting(x, y+1, oSolid)) {
	if (keyboard_check_pressed(vk_up)) {
		y_speed = -4;
	}
	else {
		y_speed = 0;
	}
}

if (place_meeting(x, y, oSpike)) {
	room_restart();
}

if (y > room_height or y < 0 or x > room_width or x < 0) {
	room_restart();
}

if instance_exists(oPlat) {
	if oPlat.colliding == true {
		move_and_collide(x_speed, y_speed, [oSolid, oPlat]);
	}
	else {
		move_and_collide(x_speed, y_speed, oSolid);
	}
}
else {
	move_and_collide(x_speed, y_speed, oSolid);
}