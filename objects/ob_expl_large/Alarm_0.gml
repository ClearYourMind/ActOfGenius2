/// @description  Camera shaking

  if (shakeCount>0) {
    shakeCount--
    __view_set( e__VW.XView, 0, _x + (random(20)-10) )
    __view_set( e__VW.YView, 0, _y + (random(20)-10) )
  } else {
    __view_set( e__VW.XView, 0, _x ) 
    __view_set( e__VW.YView, 0, _y )
    exit
  }

alarm[0] = 2
