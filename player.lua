Player = {}

function Player:load()
	self.x = 50
	self.y = Screen.height / 2
	self.width = 20
	self.height = 20
end


function Player:update(dt)

end


function Player:draw()
	love.graphics.setColor(1, 1, 0.4)
	love.graphics.rectangle("fill", self.x, self.y, self.width, self.height)
end
