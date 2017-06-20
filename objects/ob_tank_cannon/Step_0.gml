/// @description Create shot from preloaded

// Check if parent alive

if not instance_exists(parent) exit;


//  Do shot

if idea == "shot"
if object_is_ancestor(parentPart.object_index, ob_head) {

    idea = ""
    var obj = noone, preObj = noone;
    with ob_shot_preloaded 
    if name == other.shotName {
        preObj = id
        obj = instance_copy(false)
        break;
    }
    
    var head = parentPart;
    with obj {
        x = other.x
        y = other.y
        lifeTime = (head.fireDist) / moveSpeed
        direction = head.image_angle+(other.sprayFactor*0.5-random(other.sprayFactor))
        teamId = other.parent.teamId
        unitId = other.parent
        preloaded = preObj
        instance_change(objIndex, false)
        sprite_index = preObj.sprite_index       
        
    }    
    sc_play_sound(soundShot)
    

}


