///@description Returns speed in pixels per frame
///@arg speed {real} in pixels per second

/// calculated speed per frame
/// or maximal jump at 1/20 of speed per second
return min(argument0 * dTime, argument0 / minFps)
