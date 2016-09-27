debug = true
player = {x=200, y=710, speed=150, img=nil}

--Timers
--We declare bullets over here...all this shit.
canShoot = true
canShootTimerMax + 2
bulltes={}
]

function love.load(arg)
    player.img = love.graphics.newImage('assets/plane.png')
     --The asset is now loaded and ready to use.

end

function love.update(dt)

	if love.keyboard.isDown('escape') then
		love.event.push('quit')
	end
	
	if love.keyboard.isDown('left','a') then
		if player.x > 0 then
			player.x=player.x-(player.speed*dt)
		end
	elseif love.keyboard.isDown('right','d')then
		if player.x < (love.graphics.getWidth() - player.img:getWidth())then
			player.x=player.x+(player.speed*dt)
		end
	elseif love.keyboard.isDown('up','w')then
		if player.y > 0 then
			player.y=player.y-(player.speed*dt)
		end
	elseif love.keyboard.isDown('down','s')then
		if player.y < (love.graphics.getHeight() - player.img:getHeight())then
			player.y=player.y+(player.speed*dt)
		end
	end

end

function love.draw(dt)
	love.graphics.draw(player.img, player.x ,player.y)

end