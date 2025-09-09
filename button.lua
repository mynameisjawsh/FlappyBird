Button = {}

Button.xOffSet = 37.5
Button.width = 75
Button.height = 40

function Button.new(sprite, text, x, y, width, height)
	local instance = {}
	setmetatable(instance, { __index = Button })

	instance.sprite = sprite
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
	love.graphics.draw(self.sprite, self.x - self.xOffSet, self.y)
end
