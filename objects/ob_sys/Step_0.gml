/// @description Calculate dTime in secs (time between frames)

dTime = min(delta_time / 1000000, 1 / minFps)
