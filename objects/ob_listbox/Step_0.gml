/// @description  Check for changes in lines

var n = ds_list_size(lines);

if n != linesCount {
    changed = true
}

linesCount = n



/// Run change event script

if changed {
    if script_exists(scListboxChange)
        script_execute(scListboxChange)
}


