GameOver = {}

function GameOver:load()
	self.BG = {
		sprite = love.graphics.newImage("Assets/Sprites/Exports/BG.png"),
		x = 0,
		y = 0
	}

	self.Ground = {
		sprite = love.graphics.newImage("Assets/Sprites/Exports/Ground.png"),
		x = 0,
		y = Screen.height - 112
	}

	self.Message = {
		fontFill = love.graphics.newFont("Assets/Fonts/DIMITRI_.TTF", 48),
		fontOutline = love.graphics.newFont("Assets/Fonts/DIMIS___.TTF", 48),
		text = "Game Over!",
		x = 0,
		y = 50,
		xOffSet = 108
	}
	
	saveHighScore(World.ScoreBoard.playerScore)

	RetryButton = Button.new(love.graphics.newImage("Assets/Sprites/Exports/RetryButton.png"),
				love.graphics.newImage("Assets/Sprites/Exports/RetryButtonPressed.png"), "Retry", Screen.width / 2, Screen.height / 2,
				Button.width, Button.height, false)
	ExitButton = Button.new(love.graphics.newImage("Assets/Sprites/Exports/ExitButton.png"),
				love.graphics.newImage("Assets/Sprites/Exports/ExitButtonPressed.png"), "Exit", Screen.width / 2, Screen.height / 2 + 70,
				Button.width, Button.height, false)
end


function GameOver:draw()
	love.graphics.setColor(1, 1, 1)
	love.graphics.draw(self.BG.sprite, self.BG.x, self.BG.y)
	love.graphics.draw(self.Ground.sprite, self.Ground.x, self.Ground.y)
	
	love.graphics.setColor(0, 0, 0)
	love.graphics.setFont(self.Message.fontOutline)
	love.graphics.printf(self.Message.text, self.Message.x + 1.75, self.Message.y - 1.75, Screen.width, "center")
	love.graphics.setColor(1, 1, 1)
	love.graphics.setFont(self.Message.fontFill)
	love.graphics.printf(self.Message.text, self.Message.x, self.Message.y, Screen.width, "center")
	
	love.graphics.setColor(0, 0, 0)
	love.graphics.setFont(self.Message.fontOutline)
	love.graphics.printf(World.ScoreBoard.playerScore, self.Message.x + 1.75, 150 - 1.75, Screen.width, "center")
	love.graphics.setColor(1, 1, 1)
	love.graphics.setFont(self.Message.fontFill)
	love.graphics.printf(World.ScoreBoard.playerScore, self.Message.x, 150, Screen.width, "center")

	RetryButton:draw()
	ExitButton:draw()
end
