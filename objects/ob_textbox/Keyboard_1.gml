/// @description  change event

if focused {
    if caption <> keyboard_string
    if script_exists(scTextboxChange)
      script_execute(scTextboxChange)
      
    caption = keyboard_string
}


