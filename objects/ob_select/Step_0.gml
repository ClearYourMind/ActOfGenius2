/// @description  Следовать за юнитом

if instance_exists(unit) and unit.selected {
    x = unit.x
    y = unit.y
} else instance_destroy()  


