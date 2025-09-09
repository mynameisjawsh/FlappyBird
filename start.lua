Start = {}

function Start:load()
	World:load()	

	self.Title = {
		fontFill = love.graphics.newFont("Assets/Fonts/DIMITRI_.TTF", 52),
		fontOutline = love.graphics.newFont("Assets/Fonts/DIMIS___.TTF", 52),
		text = "Lua Bird",
		x = 0,
		y = 50
	}

	if love.filesystem.getInfo("highscores.txt") then
		savedScore = love.filesystem.read("highscores.txt")
		highScore = tonumber(savedScore)
	end

	PlayButton = Button.new(love.graphics.newImage("Assets/Sprites/Exports/PlayButton.png"), "Play", Screen.width / 2, Screen.height / 2, Button.width, Button.height)
	ExitButton = Button.new(love.graphics.newImage("Assets/Sprites/Exports/ExitButton.png"), "Exit", Screen.width / 2, Screen.height / 2 + 70, Button.width, Button.height)
end


function Start:update(dt)
	World:scrollBG(dt)
	World:scrollGround(dt)
end


function Start:draw()
	World:draw()
	World:drawGround()

	love.graphics.setColor(0, 0, 0)
	love.graphics.setFont(self.Title.fontOutline)
	love.graphics.printf(self.Title.text, self.Title.x + 2, self.Title.y - 2, 288, "center")

	love.graphics.setColor(1, 1, 1)
	love.graphics.setFont(self.Title.fontFill)
	love.graphics.printf(self.Title.text, self.Title.x, self.Title.y, 288, "center")
	
	love.graphics.setColor(0, 0, 0)
	love.graphics.setFont(self.Title.fontOutline)
	love.graphics.printf(highScore, self.Title.x, self.Title.y * 2, 288, "center")

	love.graphics.setColor(1, 1, 1)
	love.graphics.setFont(self.Title.fontFill)
	love.graphics.printf(highScore, self.Title.x - 2, (self.Title.y * 2) + 2, 288, "center")

	PlayButton:draw()
	ExitButton:draw()
end
