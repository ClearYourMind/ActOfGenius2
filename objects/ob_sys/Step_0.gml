/// @description Calculate dTime in secs (time between frames)

ppSec_ppFrame = min(delta_time / 1000000, 1 / minFps)
