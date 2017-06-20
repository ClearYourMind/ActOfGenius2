/// @description  Run custom scDealDamage script

if script_exists(scDealDamage)
script_execute(scDealDamage)



/// Create explosion

if object_exists(explType)
with instance_create(x, y, explType) {      // x - parent id; 
    image_xscale = other.explScale
    image_yscale = other.explScale
}  

if audio_exists(explSound) 
    sc_play_sound(explSound)



