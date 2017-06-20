/// @description  Process collision
var angle = degtorad(180-point_direction(x, y, other.x, other.y));
 
    x += cos(angle)*(abs(speed))
    y += sin(angle)*(abs(speed))
//    speed *= 0.8
//    motion_add(angle, speed)
 
//    show_debug_message('Collision  = '+string(angle/pi*180)+'; Direction = '+string(direction))


