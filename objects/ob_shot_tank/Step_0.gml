/// @description Move, LifeTime expiration

speed = sc_ppSec_ppFrame(moveSpeed)

// lifeTime expiration
lifeTime -= dTime
if lifeTime<=0 
	instance_destroy()




