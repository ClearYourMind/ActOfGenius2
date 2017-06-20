event_inherited();
exit;
/// Debug

var _x = x + cos(degtorad(tgAngle + parentPart.image_angle))*100
var _y = y + sin(degtorad(tgAngle + parentPart.image_angle))*100

draw_set_colour(c_red)
draw_line(x,y, _x, _y)
draw_set_colour(c_white)


var _x = x + cos(degtorad(direction + parentPart.image_angle))*100
var _y = y + sin(degtorad(direction + parentPart.image_angle))*100

draw_set_colour(c_green)
draw_line(x,y, _x, _y)
draw_set_colour(c_white)


