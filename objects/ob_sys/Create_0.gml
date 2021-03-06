/// @description   Init global variables, Set up sound, Set app surface

/// Init globals

globalvar Teams
globalvar SelUnit
globalvar viewCoeff
globalvar dTime
globalvar minFps

enum ctrl {
  AI,
  Player,
  Neutral
}

Teams = ds_grid_create(2, 2)   // teamId; param: 0-control, 1-color

Teams[# 0, 0] = ctrl.Neutral
Teams[# 0, 1] = make_colour_rgb(0, 192, 0)

Teams[# 1, 0] = ctrl.Player
Teams[# 1, 1] = make_colour_rgb(192, 0, 0)

SelUnit = noone

viewCoeff = __view_get( e__VW.WPort, 0 ) / __view_get( e__VW.WView, 0 )

dTime = 0
minFps = 20


/// Set up sound

globalvar channelNum
globalvar emitters
globalvar emitterSounds

audio_listener_orientation(0,0,1, 0,-1,0)
channelNum = 64

audio_master_gain(0.05)
audio_channel_num(channelNum)
audio_falloff_set_model(audio_falloff_linear_distance)

emitters[channelNum-1] = 0
emitterSounds[channelNum-1] = noone
  
for (var i=0; i<channelNum; i++) {
emitters[i] = audio_emitter_create()
audio_emitter_falloff(emitters[i], __view_get( e__VW.WView, 0 )*0.5, __view_get( e__VW.WView, 0 ), 1.5)
emitterSounds[i] = noone
}  



/// Set up application surface
application_surface_enable(false)
