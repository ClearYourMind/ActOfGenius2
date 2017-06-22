/// @description Moving, LifeTime expiration

var d_xy = sc_shot_move(moveSpeed, 0)
x += d_xy[0]
y += d_xy[1]

// lifeTime expiration
lifeTime -= dTime
if lifeTime<=0 
	instance_destroy()




