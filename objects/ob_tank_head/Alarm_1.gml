/// @description  Do shot   (set cannon idea = 'shot')
/// @function  Do shot   
/// @param set cannon idea = 'shot'

okReload = false

  // get current cannon
with headCannon[ burstCount_ mod gunCount ] {
  idea = "shot"
}
    
if (burstCount_ < burstCount - 1) {    // it counts up to max
    burstCount_++
    alarm[1] = burstTime   // след выстрел в очереди
    alarm[0] = shotTime    // перезарядка между очередями  (restarted after each shot)
} else {
    burstCount_ = 0
    alarm[0] = shotTime    // перезарядка между очередями
}


