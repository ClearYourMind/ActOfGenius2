/// @description  Select unit

selected = not selected

if selected {
    // Удаляем лишние выделения
    if instance_exists(ob_select)
        with ob_select instance_destroy()        
    with instance_create(x, y, ob_select)
        unit = other.id
    if teamId >= 0                  
    if Teams[# teamId, 0] == ctrl.Player {
        control = ctrl.Player
        o_aiScript = aiScript
        aiScript = scIdle
        o_aiMainScript = aiMainScript
        aiMainScript = noone
        script_execute(aiScript)
    }
    SelUnit = id
    __view_set( e__VW.Object, 0, id )

} else {
    aiMainScript = o_aiMainScript
    control = ctrl.AI
    SelUnit = noone
    __view_set( e__VW.Object, 0, noone )
}



