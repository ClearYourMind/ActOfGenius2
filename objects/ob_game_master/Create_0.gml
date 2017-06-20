/// @description  Load units

var fname = file_find_first("units\\*", 0);
while fname != "" {
    if file_exists("units\\"+fname) {
        show_debug_message("File "+fname+" opened successfully!")
    } else 
        show_debug_message("File "+fname+" not found!")
        
    with instance_create(0,0, ob_unit_preloaded) {
        sc_unit_preloaded_load("units\\"+fname)
    }

            
    fname = file_find_next()
}

file_find_close()



/// Load shots

var fname = file_find_first("shots\\*", 0);
while fname != "" {
    if file_exists("shots\\"+fname) {
        show_debug_message("File "+fname+" opened successfully!")
    } else 
        show_debug_message("File "+fname+" not found!")
        
    with instance_create(0,0, ob_shot_preloaded) {
        sc_shot_preloaded_load("shots\\"+fname)
    }
            
    fname = file_find_next()
}

file_find_close()



