/// @description  sc_unit_ai_1()
/// @function  sc_unit_ai_1
/*
 Скрипт присваивается к aiMainScript, выполняется всегда перед aiScript.
 Определяет для юнита каким должен быть aiScript
*/

// Проверяем досигаема ли еще цель, и жива ли
if instance_exists(target) {
    if (distance_to_object(target) > sightDist)
    target = noone
} 

// Скрипт выдает 0 если он больше не уместен 
var success = 0
if script_exists(aiScript)
    success = script_execute(aiScript) 
 
if success != -1   // not success
    aiScript = scIdle
   


