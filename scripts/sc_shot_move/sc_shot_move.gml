///@desc Move an object with speed tied to time (Returns new x,y)
///@arg Speed in pixels per second
///@arg AngularSpeed in pixels per second

var spd = argument[0] // linear speed
var ang = 0           // angular speed
if argument_count>1
	var ang = argument[1]

var s = spd*dTime 

var d_xy;
d_xy[0] = lengthdir_x(s, direction)
d_xy[1] = lengthdir_y(s, direction)
d_xy[2] = s

return d_xy;

