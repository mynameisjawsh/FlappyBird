Start = {}

function Start:load()
	love.graphics.setBackgroundColor(0, 0.6, 1)

	self.Title = {
		font = love.graphics.newFont(52),
		text = "Lua Bird",
		x = Screen.width / 2,
		y = 50,
		xOffSet = 108
	}
end


function Start:update(dt)

end


function Start:draw()
	love.graphics.setColor(0, 0, 0)
	love.graphics.setFont(self.Title.font)
	love.graphics.print(self.Title.text, self.Title.x - self.Title.xOffSet, self.Title.y)
end
