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
//if instance_exists(parent.target) 
  okReach = false
  tgAngle = point_direction(parent.x, parent.y, tgX, tgY)
  var d = distance_to_point(tgX, tgY)
  if d > maxSpeed * 5          // можно подставить sz, вычисляемый из bbox_width/height
    tgSpeed = maxSpeed
  else {  
    tgSpeed = 0  
    idea = "stop"
    okReach = true
  }  
} 



///  Behaviour

if parent == noone exit

  // set direction       
var turnSign = angle_difference(tgAngle, angle);



//if ( abs(turnSign) > 180 ) 
//  turnSign = -turnSign
  
if ((angle > tgAngle-turnSpeed*1.5) and ( angle < tgAngle+turnSpeed*1.5))
  angle = tgAngle 
else
  angle += turnSpeed * sign(turnSign)
      
  // set speed
if (abs(moveSpeed) <= abs(tgSpeed))  
  moveSpeed += accel * sign(tgSpeed)      
else  
if (abs(moveSpeed) > abs(tgSpeed))  
  moveSpeed *= stopFactor  
  
//if (abs(moveSpeed) > maxSpeed)    
//  moveSpeed = maxSpeed * sign(moveSpeed)

if angle<0   then angle = angle+360  
if angle>360 then angle = angle-360
    
parent.speed = sc_ppSec_ppFrame(moveSpeed)
parent.direction   = angle
parent.image_angle = angle 
image_angle = angle
image_speed = moveSpeed / 4

