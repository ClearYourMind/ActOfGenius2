action_inherited();
/// Move all parts together

for(var i=partcount-1; i>-1; i--)
if instance_exists(parts[i])
with parts[i] {
    if (xOffset == 0) and (yOffset == 0) {
        x = parentPart.x 
        y = parentPart.y 
    } else {
        var _a = degtorad(360 - parentPart.image_angle);
        var _c = cos(_a);
        var _s = sin(_a);
        x = parentPart.x + (xOffset*_c - yOffset*_s)
        y = parentPart.y + (xOffset*_s + yOffset*_c)
    }
    image_angle = parentPart.image_angle + direction //+ 90
}

    

/// Manual CHASSIS control

if instance_exists(chassis[0])
if control == ctrl.Player
if instance_exists(ctrlMethod) 
with chassis[0] {
//    idea = 'hand'
//    tgSpeed = 0
//    tgAngle = angle
    
    if ctrlMethod.keys[k.Move] {
        tgSpeed = maxSpeed
    } else
    if ctrlMethod.keys[k.Back] {
        tgSpeed = -maxSpeed
    } else
      tgSpeed = 0 
    
    if ctrlMethod.keys[k.Left] {
       tgAngle = angle + 90
    } else
    if ctrlMethod.keys[k.Right] {
       tgAngle = angle - 90
    } else
      tgAngle = angle
    
}


/// Manual HEADS control

if control = ctrl.Player
if instance_exists(ctrlMethod)
for (var i=0; i<array_length_1d(head); i++)
if instance_exists(head[i])
if head[i].control == ctrl.Player 
with head[i] {

    tgAngle = direction

    if ctrlMethod.keys[k.RotateLeft] {
        tgAngle = direction + 50
    }
    
    if ctrlMethod.keys[k.RotateRight] {
        tgAngle = direction - 50
    }
    
    if ctrlMethod.keys[k.Fire] {
        idea = "shot" 
    } else {
        idea = ""
    }
}

var __b__;
__b__ = action_if_variable(control, ctrl.AI, 0);
if __b__
{
{
/// Process AI  (Execute AI Scripts)

if script_exists(aiMainScript) {
  script_execute(aiMainScript)
} //else show_debug_message('Unit "'+fullname+'" has NO aiMainScript assigned')

///  Execute aiScript

// Determine if a script is changed
if o_aiScript != aiScript {
  show_debug_message("Unit \""+fullname+"\" changed aiScript to "+script_get_name(aiScript))
  o_aiScript = aiScript
}
  

}
}
exit;
