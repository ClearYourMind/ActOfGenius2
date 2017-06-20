/// @description  sc_unit_ai_findtarget()
/// @function  sc_unit_ai_findtarget

/// searching target

if !instance_exists(target) {
    with (ob_unit) {
        if (teamId != other.teamId)
        if (distance_to_object(other) <= other.sightDist) {
            other.target = id
            break
        }
    }
}

if instance_exists(target) {
//       show_debug_message( 'Unit "'+fullname+'"('+string(id)+') found target "'+target.fullname+'"('+string(target.id)+')'  +
//         ' at distance '+string(distance_to_object(target)) )
    aiScript = scTargetFound
}

return -1 



