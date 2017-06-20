/// @description  sc_unit_ai_follow()
/// @function  sc_unit_ai_follow
// follow enemy unit

if not instance_exists(id) exit
if not instance_exists(target) {
  return 0
}

script_execute(scTargetFound)

var d = distance_to_point(target.x, target.y)

if instance_exists(preferChassis) {
  if instance_exists(preferHead) and d < preferHead.fireDist {
    preferChassis.idea = "stop"
    aiScript = scDestroyTarget
  
  } else {
    preferChassis.tgX = target.x
    preferChassis.tgY = target.y
    preferChassis.idea = "goto"
  }
//  return -1 // success
//} else
//  return 0  // fail (reason number)
}
  
return -1 // success


