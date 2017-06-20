/// @description  Create parts from preloaded unit

//var preloaded;

with ob_unit_preloaded
if name == other.name {
    other.preloaded = id
    break;
}

if instance_exists(preloaded) {
    show_debug_message("Preloaded unit \""+name+"\" found ("+string(preloaded)+"). Creating unit...")
} else {
    show_debug_message("Preloaded unit \""+name+"\" not found!")
    exit
}

partcount = preloaded.partcount
var i = 0
repeat (partcount) {
  parts[i] = noone
  i++
}

var obj;
for (var i=0; i<partcount; i++) {
    with preloaded.parts[i] obj=instance_copy(false)
    parts[i] = obj
    parts[i].visible = true
    parts[i].parent = id        // parent is ob_unit that every part associated with
}

// set real part to parentPart
for (i=0; i<partcount; i++) {
    if parts[i].parentPart != noone {
        show_debug_message("Parent for part " +string(i)+" ("+ object_get_name(parts[i].object_index)+") is: "+
                           string(parts[i].parentPart)+" ("+ object_get_name(parts[parts[i].parentPart].object_index)+")" ) 
        parts[i].parentPart = parts[parts[i].parentPart]
        parts[i].parentPartName = object_get_name(parts[i].parentPart.object_index)
    } else {   // default
        parts[i].parentPart = parts[i].parent  // ob_unit
        parts[i].parentPartName = object_get_name(parts[i].parentPart.object_index)
    }
}    



/// Group parts by types

chassis[0] = noone
body[0]    = noone
head[0]    = noone
cannon[0]  = noone

chassis = sc_objarray_find_by_parent(parts, ob_chassis)
body    = sc_objarray_find_by_parent(parts, ob_body)
head    = sc_objarray_find_by_parent(parts, ob_head)
cannon  = sc_objarray_find_by_parent(parts, ob_cannon)

// assign cannons to corresponding heads
for (var i=0; i<array_length_1d(cannon); i++)
if object_is_ancestor(cannon[i].parentPart.object_index, ob_head) {
    var hd = cannon[i].parentPart;
    hd.headCannon[hd.gunCount] = cannon[i]
    hd.gunCount++
}

// set mask
sprite_index = body[array_length_1d(body)-1].sprite_index
mask_index   = body[array_length_1d(body)-1].sprite_index



/// Further init (created = true)

name        = preloaded.name
fullname    = preloaded.fullname
height      = preloaded.height
explScale   = preloaded.explScale
explType    = preloaded.explType
explSound   = preloaded.explSound
shieldValue = preloaded.shieldValue
objHealth   = preloaded.objHealth

sightDist   = preloaded.sightDist
retreatDist = preloaded.retreatDist

scIdle          = preloaded.scIdle
scFindTarget    = preloaded.scFindTarget
scTargetFound   = preloaded.scTargetFound
scFollowTarget  = preloaded.scFollowTarget
scDestroyTarget = preloaded.scDestroyTarget

aiMainScript = preloaded.aiMainScript
o_aiMainScript = aiMainScript

scTakeDamage = preloaded.scTakeDamage

preferChassis = chassis[0]




/// Debug

var s="";

for (var i=0; i<array_length_1d(head); i++) {
    s = "Head ("+ string(head[i]) +") has " +string(array_length_1d(head[i].headCannon))+ " cannons assigned: "
    for (var j=0; j<head[i].gunCount; j++) {
        s+=string(head[i].headCannon[j])+", "
    }
    show_debug_message(s)
}

s=""
s += "Chassis count=" + string(array_length_1d(chassis))+"; "
for(var i=0; i<array_length_1d(chassis); i++)
    s += object_get_name(chassis[i].object_index) +" ("+ string(chassis[i]) +"), "
show_debug_message(s)    

s=""
s += "Body count=" + string(array_length_1d(body))+"; "
for(var i=0; i<array_length_1d(body); i++)
    s += object_get_name(body[i].object_index) +" ("+ string(body[i]) +"), "
show_debug_message(s)    

s=""
s += "Head count=" + string(array_length_1d(head))+"; "
for(var i=0; i<array_length_1d(head); i++)
    s += object_get_name(head[i].object_index) +" ("+ string(head[i]) +"), "
show_debug_message(s)    
s=""
for(var i=0; i<array_length_1d(head); i++)
    s += "BurstTime = " +string(head[i].burstTime)+ "; "
show_debug_message(s)    

s=""
s += "Cannon count=" + string(array_length_1d(cannon))+"; "
for(var i=0; i<array_length_1d(cannon); i++)
    s += object_get_name(cannon[i].object_index) +" ("+ string(cannon[i]) +"), "
show_debug_message(s)    


