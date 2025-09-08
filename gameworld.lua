World = {}

function World:load()
	love.graphics.setBackgroundColor(0, 0.6, 1)

	self.Ground = {
		x = Screen.x,
		y = Screen.height - 112,
		width = Screen.width,
		height = Screen.height
	}
end


function World:update(dt)

end


function World:draw()
	love.graphics.setColor(0, 0.75, 0)
	love.graphics.rectangle("fill", self.Ground.x, self.Ground.y, self.Ground.width, self.Ground.height)
end
