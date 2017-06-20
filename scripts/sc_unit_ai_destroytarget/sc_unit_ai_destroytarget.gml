/// @description  sc_unit_ai_destroytarget()
/// @function  sc_unit_ai_destroytarget
// Point at enemy unit and open fire


if not instance_exists(id) exit

script_execute(scTargetFound)

if instance_exists(preferHead) {
    if instance_exists(target) {
        preferHead.target = target
        if preferHead.okAngle {
            preferHead.idea = "shot"
        }   
    } else {
        preferHead.tgAngle = 0  
        preferHead.target = noone
        return 0
    }  
  
    if instance_exists(target) {
        var d = distance_to_point(target.x, target.y)
        if d > preferHead.fireDist {
            // change preferred head?
            aiScript = scFollowTarget
        }
    }
}
             
return -1    // success



