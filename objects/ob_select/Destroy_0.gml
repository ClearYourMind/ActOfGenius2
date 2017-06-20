/// @description  Deselect unit

SelUnit = noone
if instance_exists(unit) {
    unit.control = ctrl.AI
    unit.selected = false
}    


