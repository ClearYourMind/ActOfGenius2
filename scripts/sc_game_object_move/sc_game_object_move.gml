///@desc Move an object with speed tied to time
///@arg Speed in pixels per second
///@arg Accel in pixels per second

var spd = 0;
var acc = 0;

if argument_count>0
	spd = argument[0]
else
	return;

if argument_count>1 {
	acc = argument[1]
	var s = spd*dTime + (acc*dTime*dTime / 2)
} else 
	var s = spd*dTime


var _dx = lengthdir_x(s, direction)
var _dy = lengthdir_y(s, direction)

/// Collision

if not place_meeting(x+_dx, y+_dy, ob_game_object) {
	x += _dx
	y += _dy
} else {
	var range = 90 // degrees at both sides
	var step = 12
	var d = direction
	for (var i=step; i<=range; i+=step)
	for (var m = -1; m<=1; m += 2) {
		_dx = lengthdir_x(s, d+i*m)
		_dy = lengthdir_y(s, d+i*m)
		if not place_meeting(x+_dx, y+_dy, ob_game_object) { 
			x += _dx
			y += _dy
			return;
		}
	}
}


