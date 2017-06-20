/// @description  Draw text

  var _xscale = (10*scale * string_length(text)) / sprite_get_width(sp_round_mask)
  var _yscale =  15*scale / sprite_get_height(sp_round_mask)
  
  draw_sprite_ext(sp_round_mask, 0, x, y + _yscale*50 , _xscale, _yscale, 0, c_black, 0.35)
  draw_set_halign(fa_center)
  var _cl = make_color_hsv(color_get_hue(color)*0.5, color_get_saturation(color)*0.5, color_get_value(color)*0.5)
  draw_text_transformed_color(x,y, string_hash_to_newline(text), scale, scale, 0, _cl, _cl,  color, color, alpha)


