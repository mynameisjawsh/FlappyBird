Pipe = {}

function Pipe:load()
	self.spriteTop = love.graphics.newImage("Assets/Sprites/Exports/PipeTop.png")
	self.spriteTube = love.graphics.newImage("Assets/Sprites/Exports/PipeTube.png")
	self.speed = 100

	self.TopPipe = {
		x = Screen.width,
		y = love.math.random(0, -185),
		width = self.spriteTube:getWidth(),
		height = self.spriteTube:getHeight()
	}
	self.MiddleGap = {
		x = self.TopPipe.x,
		y = self.TopPipe.y + self.TopPipe.height,
		width = self.TopPipe.width,
		height = 100
	}
	self.BottomPipe = {
		x = self.TopPipe.x,
		y = self.MiddleGap.y + self.MiddleGap.height,
		width = self.TopPipe.width,
		height = Screen.height
	}
end


function Pipe:update(dt)
	self:move(dt)
	self:resetPipe()
end


function Pipe:resetPipe()
	if checkScrollPos(self.TopPipe, Screen) then
		self:load()
	end
end


function Pipe:move(dt)
	self.TopPipe.x = self.TopPipe.x - self.speed * dt
	self.BottomPipe.x = self.BottomPipe.x - self.speed * dt
end


function Pipe:draw()
	love.graphics.setColor(0.55, 1, 0.55)
	love.graphics.draw(self.spriteTop, self.TopPipe.x, self.MiddleGap.y, nil, 1, -1, 0)
	love.graphics.draw(self.spriteTube, self.TopPipe.x, self.TopPipe.y - self.MiddleGap.height)

	love.graphics.draw(self.spriteTop, self.BottomPipe.x, self.BottomPipe.y)
	love.graphics.draw(self.spriteTube, self.BottomPipe.x, self.BottomPipe.y + self.MiddleGap.height)
end
