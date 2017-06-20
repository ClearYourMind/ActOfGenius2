/// @description  Appear explosions

  if (explCount>0) {
    with instance_create(x + random(100)-50, y + random(100)-50, choose(ob_expl1,ob_expl2,ob_expl3,ob_expl6,ob_expl8,ob_expl9)) {
      image_xscale = 1
      image_yscale = 1
    }  
    explCount--
  } else {
    instance_destroy()
  } 

action_set_alarm(irandom(5)+5, 1);
