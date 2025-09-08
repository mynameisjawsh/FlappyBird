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
	self.yVel = self.yVel + self.gravity * dt
	self.y = self.y + self.yVel * dt

	if checkCollision(self, World.Ground) then
		self.y = World.Ground.y - self.height
	end
end


function Player:flap()
	self.yVel = -150
end


function Player:draw()
	love.graphics.setColor(1, 1, 0.4)
	love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end
