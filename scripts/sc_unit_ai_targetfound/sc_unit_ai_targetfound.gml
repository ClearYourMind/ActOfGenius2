/// @description  sc_unit_ai_targetfound()
/// @function  sc_unit_ai_targetfound
/// Когда цель найдена  (выбор preferHead)

///  Script for unit that has HEADs and can ATTACK

// Select most suitable head
// select the head with closest fireDist, that can shoot target
// (close firing is in high priority)

if not instance_exists(target) 
    return 0

preferHead = noone

var d = distance_to_point(target.x, target.y)
for (var i=0; i<array_length_1d(head); i++) {   
    if not instance_exists(preferHead) {
        if head[i].fireDist >= d
            preferHead = head[i]    
    } else {
        if preferHead.fireDist > head[i].fireDist  // closest fireDist
           and head[i].fireDist >= d               // can shoot target
            preferHead = head[i]
        else {
            //idle this head
            head[i].idea=""
            head[i].tgAngle = 0
            head[i].target = noone
        }                
    }
}
 
if instance_exists(preferHead)
    aiScript = scDestroyTarget      
else
    aiScript = scFollowTarget        
 
return -1



