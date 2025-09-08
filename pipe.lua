Pipe = {}

function Pipe:load()
	self.speed = 100

	self.TopPipe = {
		x = Screen.width,
		y = Screen.y,
		width = 75,
		height = love.math.random(50, 300)
	}
	self.MiddleGap = {
		x = self.TopPipe.x,
		y = self.TopPipe.height,
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
	if checkPipePos(self.TopPipe, Screen) then
		self:load()
	end
end


function Pipe:move(dt)
	self.TopPipe.x = self.TopPipe.x - self.speed * dt
	self.BottomPipe.x = self.BottomPipe.x - self.speed * dt
end


function Pipe:draw()
	love.graphics.setColor(0.55, 1, 0.55)
	love.graphics.rectangle("fill", self.TopPipe.x, self.TopPipe.y, self.TopPipe.width, self.TopPipe.height)
	love.graphics.rectangle("fill", self.BottomPipe.x, self.BottomPipe.y, self.BottomPipe.width, self.BottomPipe.height)
end
