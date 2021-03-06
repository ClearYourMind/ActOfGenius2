/// @description Process behaviour

/// Check if parent alive

if not instance_exists(parent) exit;


/// Process Ideas         

if idea == "stop" {
  tgSpeed = 0
  tgAngle = angle
  tgX = parent.x
  tgY = parent.y
  idea = ""
} else

if idea == "goto" {
  okReach = false
  tgAngle = point_direction(parent.x, parent.y, tgX, tgY)
  var d = distance_to_point(tgX, tgY)
  if d > parent.bodySize * 2
    tgSpeed = maxSpeed
  else {  
    tgSpeed = 0  
    idea = "stop"
    okReach = true
  }  
} 



///  Behaviour

if not instance_exists(parent) exit

  // set direction       
var _turnSpeed = turnSpeed * dTime  
var turnSign = angle_difference(tgAngle, angle);

 
if ((angle > tgAngle-_turnSpeed*0.5) and ( angle < tgAngle+_turnSpeed+0.5))
  angle = tgAngle 
else
  angle += _turnSpeed * sign(turnSign)
      
  // set speed
var acc = 0;
if (abs(moveSpeed) <= abs(tgSpeed)) {
	acc = (accel*dTime*dTime / 2) * 1000
	moveSpeed += acc * sign(tgSpeed)      
} else  
if (abs(moveSpeed) > abs(tgSpeed))  
	moveSpeed *= power(stopFactor, dTime)
  
if angle<0   then angle = angle+360  
if angle>360 then angle = angle-360
    
	
	
///  Moving	

parent.direction   = angle
parent.image_angle = angle 
image_angle = angle
image_speed = moveSpeed*dTime / 4

var spd = moveSpeed
var ang = turnSpeed
with parent {
	var d_xy = sc_game_object_move(spd, ang)
	x += d_xy[0]
	y += d_xy[1]
}
