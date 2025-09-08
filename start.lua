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

	if love.filesystem.getInfo("highscores.txt") then
		local savedScoreString = love.filesystem.read("highscores.txt")
		highScore = tonumber(savedScoreString) or 0
	end

	PlayButton = Button.new(love.graphics.newFont(32), "Play", Screen.width / 2, Screen.height / 2, 120, 50)
	ExitButton = Button.new(love.graphics.newFont(32), "Exit", Screen.width / 2, Screen.height / 2 + 70, 120, 50)
end


function Start:update(dt)

end


function Start:draw()
	love.graphics.setColor(0, 0, 0)
	love.graphics.setFont(self.Title.font)
	love.graphics.print(self.Title.text, self.Title.x - self.Title.xOffSet, self.Title.y)

	love.graphics.print(highScore, Screen.width / 2, Screen.height / 2)

	PlayButton:draw()
	ExitButton:draw()
end
