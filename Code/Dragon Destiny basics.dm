world
	fps = 25
	icon_size = 32

	view = 6

mob
	New()
		movementLoop()
		..()
	proc
		movementLoop()
			spawn()
				while(src)
				//	update_layer()
					if(upKey)
						if(rightKey) 	 applyForce(NORTHEAST,1.5)
						else if(leftKey) applyForce(NORTHWEST,1.5)
						else 			 applyForce(NORTH,4)

					else if(downKey)
						if(rightKey) 	 applyForce(SOUTHEAST,1.5)
						else if(leftKey) applyForce(SOUTHWEST,1.5)
						else 			 applyForce(SOUTH,3)

					else if(leftKey) 	 applyForce(WEST,3)
					else if(rightKey) 	 applyForce(EAST,3)

					sleep(world.tick_lag)

# define UP_KEY 0
# define DOWN_KEY 1
# define LEFT_KEY 2
# define RIGHT_KEY 3

mob
	var
		upKey 		= 0
		downKey 	= 0
		leftKey 	= 0
		rightKey 	= 0

	verb
		keyDown(KEY as num)
			set hidden = 1
			switch(KEY)
				if(UP_KEY) 		upKey = 1
				if(DOWN_KEY) 	downKey = 1
				if(LEFT_KEY) 	leftKey = 1
				if(RIGHT_KEY) 	rightKey = 1

		keyUp(KEY as num)
			set hidden = 1
			switch(KEY)
				if(UP_KEY) 		upKey = 0
				if(DOWN_KEY) 	downKey = 0
				if(LEFT_KEY) 	leftKey = 0
				if(RIGHT_KEY) 	rightKey = 0



world
	New()
		movementLoop()
		..()

	proc
		movementLoop()
			spawn()
				while(src)
					for(var/atom/movable/AM)
						AM.move()
					sleep(world.tick_lag)

atom/movable
	var
		velX = 0
		velY = 0

		maxYVel = 4
		maxXVel = 4

		drag = 1
		dragOn = 1

	proc
		getSpeed() return sqrt(velX * velX + velY * velY)

		applyForce(DIRECTION,AMOUNT)
			switch(DIRECTION)
				if(NORTH) 		apply(0,AMOUNT)
				if(SOUTH) 		apply(0,-AMOUNT)
				if(EAST) 		apply(AMOUNT,0)
				if(WEST) 		apply(-AMOUNT,0)
				if(NORTHEAST)	apply(AMOUNT,AMOUNT)
				if(NORTHWEST)	apply(-AMOUNT,AMOUNT)
				if(SOUTHEAST)	apply(AMOUNT,-AMOUNT)
				if(SOUTHWEST)   apply(-AMOUNT,-AMOUNT)

		apply(X,Y)
			velX += X
			velY += Y
			if(velX < -maxXVel)  velX = - maxXVel
			if(velX > maxXVel) 	 velX = maxXVel
			if(velY < -maxYVel)  velY = - maxYVel
			if(velY > maxYVel)	 velY = maxYVel

		move()
			for(var/xMoves = abs(velX), xMoves > 0, xMoves--)
				if(!step(src,velX < 0 ? WEST : EAST))
					velX = 0
					break

			for(var/yMoves = abs(velY), yMoves > 0, yMoves--)
				if(!step(src,velY < 0 ? SOUTH : NORTH))
					velY = 0
					break

			if(dragOn) drag()

		drag()
			if(velX < 0) velX = min(velX + drag,0)
			if(velX > 0) velX = max(velX - drag,0)
			if(velY < 0) velY = min(velY + drag,0)
			if(velY > 0) velY = max(velY - drag,0)

