Button = {}

Button.xOffSet = 37.5
Button.width = 75
Button.height = 40

function Button.new(sprite, spritePressed, text, x, y, width, height, pressed)
	local instance = {}
	setmetatable(instance, { __index = Button })

	instance.sprite = sprite
	instance.spritePressed = spritePressed
	instance.text = text
	instance.x = x
	instance.y = y
	instance.width = width
	instance.height = height
	instance.pressed = pressed

	return instance
end


function Button:update()

end


function Button:draw()
	love.graphics.setColor(1, 1, 1)

	if not self.pressed then
		love.graphics.draw(self.sprite, self.x - self.xOffSet, self.y)
	else
		love.graphics.draw(self.spritePressed, self.x - self.xOffSet, self.y)
	end
end
