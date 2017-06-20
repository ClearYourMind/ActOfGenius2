/// @description  Cleaning up

for (var i=0; i<partcount; i++)
with parts[i] instance_destroy()




/// Play sound

sc_play_sound(explSound)


/// Create explosion 

if (object_exists(explType))
with (instance_create(x,y, explType)) {
  image_xscale = other.explScale
  image_yscale = other.explScale
}


