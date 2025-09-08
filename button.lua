Button = {}

function Button:load()
	self.font = love.graphics.newFont(32)
	self.text = "button"
	self.x = Screen.width / 2
	self.xOffSet = 60
	self.y = Screen.height / 2
	self.width = 120
	self.height = 50
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
