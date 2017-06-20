/// @description  sc_unit_idle(next_script)
/// @function  sc_unit_idle
/// @param next_script

/* 
    Brings unit into Default state
    Сделан специально для сброса любого действия (обнуления)
*/ 

for (var i=0; i<array_length_1d(head); i++) 
if instance_exists(head[i]) {
  head[i].idea=""
  head[i].tgAngle = 0
  head[i].target = noone
}

for (var i=0; i<array_length_1d(chassis); i++)
if  instance_exists(chassis[i]) {
  chassis[i].idea = "stop"
}


if not instance_exists(target)
  aiScript = scFindTarget
//  ^^ it should do scMainScript ???
 
// run next script
if argument_count>0
if script_exists(argument[0]) {
  aiScript = argument[0]
}

return -1
