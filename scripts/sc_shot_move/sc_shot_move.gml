///@desc Move an object with speed tied to time (Returns new x,y)
///@arg Speed in pixels per second
///@arg Accel in pixels per second

var spd = argument0
var acc = argument1

if acc <>0 {
	var s = spd*dTime + (acc*dTime*dTime / 2)
} else
	var s = spd*dTime 

var d_xy;
d_xy[0] = lengthdir_x(s, direction)
d_xy[1] = lengthdir_y(s, direction)
d_xy[2] = s

return d_xy;

