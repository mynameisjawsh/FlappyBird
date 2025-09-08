GameOver = {}

function GameOver:load()
	self.Message = {
		font = love.graphics.newFont(32),
		text = "Game Over!",
		x = Screen.width / 2,
		y = 50,
		xOffSet = 108
	}

	

	RetryButton = Button.new(love.graphics.newFont(32), "Retry", Screen.width / 2, Screen.height / 2, 120, 50)
	ExitButton = Button.new(love.graphics.newFont(32), "Exit", Screen.width / 2, Screen.height / 2 + 70, 120, 50)
end


function GameOver:update()

end


function GameOver:draw()
	love.graphics.setColor(0, 0, 0)
	love.graphics.setFont(self.Message.font)
	love.graphics.print(self.Message.text, self.Message.x - self.Message.xOffSet, self.Message.y)

	love.graphics.print(World.ScoreBoard.playerScore, self.Message.x, 100)

	RetryButton:draw()
	ExitButton:draw()
end
