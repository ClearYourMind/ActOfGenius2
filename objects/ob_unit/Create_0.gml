///@desc Init properties
event_inherited()

partcount = 0
parts[0] = noone

teamId = -1
selected = false
control = ctrl.AI
target = noone

preferChassis = noone
preferHead    = noone

aiScript = noone      // выполняемая команда 
o_aiScript = noone    // Предыдущий скрипт (определять изменение скрипта)

// Эти скрипты задаются из файла
aiMainScript   = noone  // Неизменяемый скрипт, выполняется всегда перед перел aiScript'ом
o_aiMainScript = noone

scIdle         = noone
scFindTarget   = noone
scTargetFound  = noone
scFollowTarget = noone
scDestroyTarget = noone

scTakeDamage = noone

name = ""
fullname = ""
filename = ""


explType = noone
explScale = 1
explSound = noone     // Звук при смерти
shieldValue = 0

preloaded = noone

sightDist   = 0
retreatDist = 0

// bodySize is a diagonal
var a = bbox_right - bbox_left 
var b = bbox_bottom - bbox_top 
bodySize = sqrt(a*a + b*b)
debugstr = ""


