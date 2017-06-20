/// @description  Slowly disappear

  x += dX
  y += dY
  dX *= dXCoeff
  dY *= dYCoeff
  scale *= dScaleCoeff
  alpha += dAlpha
  if(alpha <= 0) instance_destroy()
  
  

