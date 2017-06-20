/// @description  Draw colored sprite over

if not sprite_exists(sprite_index) exit

draw_self()

if parent.teamId >= 0 {
    gpu_set_blendmode(bm_add)
    image_blend = Teams[# parent.teamId, 1]

    draw_self()

    image_blend = c_white
    gpu_set_blendmode(bm_normal)
}


