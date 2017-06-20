if focused
    image_alpha = 1
else
    image_alpha = 0.75

draw_self()


var n = ds_list_size(lines);
if n > 0 {
    draw_set_colour(textcolor)
    draw_set_font(fn_default)
    
    var _ox = x, _oy = y   // save original x, y
    var _h = bbox_bottom - bbox_top;
    y = bbox_top + _h * 0.05 // + 5% from top
    
    for (var i=0; i<n; i++) {
        caption = lines[| i]
        y += lineHeight
        sc_gui_base_captionable_draw()
    }  
    // restore origin x, y
    x = _ox
    y = _oy
}



