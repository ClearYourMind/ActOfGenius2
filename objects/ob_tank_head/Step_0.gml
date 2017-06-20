/// @description   Check if parent alive

if not instance_exists(parent) exit;


/// Process ideas

//if parent == noone exit

if idea == "" {
    alarm[1] = -1
}  

if instance_exists(target) {
  tgAngle = point_direction(x, y, target.x, target.y) 
  tgAngle -= parentPart.image_angle
} else {
//  tgAngle = 0
}


if idea == "shot" {
    // do shot
    if okReload event_perform(ev_alarm, 1)
    idea = ""
}
 

/// Behaviour

if not instance_exists(parent) exit


var angle = direction;

var turnSign = angle_difference(tgAngle, angle)

okAngle = false

// targeting for non-turning head
if abs(turnSign) <= 2
    okAngle = true
    
// targeting for turning head
if abs(turnSign) <= turnSpeed * 1.5 {   
    angle = tgAngle 
    okAngle = true
}

if not okAngle {
    angle += turnSpeed * sign(turnSign)
}
  
direction = angle

    

