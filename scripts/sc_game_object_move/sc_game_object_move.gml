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


x += lengthdir_x(s, direction)
y += lengthdir_y(s, direction)

