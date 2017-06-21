/// @description Move, LifeTime expiration

speed = moveSpeed * ppSec_ppFrame

// lifeTime expiration
lifeTime -= ppSec_ppFrame
if lifeTime<=0 
	instance_destroy()




