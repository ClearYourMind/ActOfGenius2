///@desc Move an object with speed tied to time
///@arg Speed in pixels per second
///@arg Accel in pixels per second

var spd = argument0;
var acc = argument1;

var d_xy = sc_shot_move(spd, acc)

var s = d_xy[2]
/// Moving with collision

if not place_meeting(x+d_xy[0], y+d_xy[1], ob_game_object)
	return d_xy
else {
	var range = 90 // degrees at both sides
	var step = 12
	var d = direction
	for (var i=step; i<=range; i+=step)
	for (var m = -1; m<=1; m += 2) {
		d_xy[0] = lengthdir_x(s, d+i*m)
		d_xy[1] = lengthdir_y(s, d+i*m)
		if not place_meeting(x+d_xy[0], y+d_xy[1], ob_game_object)
			return d_xy;
	}
	return [0,0]
}

