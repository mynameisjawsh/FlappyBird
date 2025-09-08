Player = {}

function Player:load()
	self.x = 50
	self.y = Screen.height / 2
	self.width = 20
	self.height = 20
	self.yVel = 0
	self.gravity = 200
end


function Player:update(dt)
	self:applyGravity(dt)
	self:move(dt)
	self:collide()
end


function Player:collide()
	if checkCollision(self, World.Ground) then
		love.load()
	end

	if checkCollision(self, Pipe.TopPipe) or checkCollision(self, Pipe.BottomPipe) then
		love.load()
	end
end


function Player:move(dt)
	self.y = self.y + self.yVel * dt
end


function Player:applyGravity(dt)
	self.yVel = self.yVel + self.gravity * dt
end


function Player:flap()
	if self.y > Screen.y then
		self.yVel = -150
	end
end


function Player:draw()
	love.graphics.setColor(1, 1, 0.4)
	love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end
