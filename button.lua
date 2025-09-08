Button = {}

self.xOffSet = 60

function Button.new(font, text, x, y, width, height)
	local instance = setmetatable({ __index = Button })

	instance.font = font
	instance.text = text
	instance.x = x
	instance.y = y
	instance.width = width
	instance.height = height

	return instance
end


function Button:update()

end


function Button:draw()
	love.graphics.setColor(1, 1, 1)
	love.graphics.rectangle("fill", self.x - self.xOffSet, self.y, self.width, self.height)

	love.graphics.setColor(0, 0, 0)
	love.graphics.setFont(self.font)
	love.graphics.print(self.text, self.x - self.xOffSet, self.y)
end
