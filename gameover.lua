GameOver = {}

function GameOver:load()
	World:load()

	self.Message = {
		font = love.graphics.newFont(32),
		text = "Game Over!",
		x = Screen.width / 2,
		y = 50,
		xOffSet = 108
	}
	
	saveHighScore(World.ScoreBoard.playerScore)

	RetryButton = Button.new(love.graphics.newImage("Assets/Sprites/Exports/RetryButton.png"), "Retry",
							Screen.width / 2, Screen.height / 2, Button.width, Button.height)
	ExitButton = Button.new(love.graphics.newImage("Assets/Sprites/Exports/ExitButton.png"), "Exit",
							Screen.width / 2, Screen.height / 2 + 70, Button.width, Button.height)
end


function GameOver:update()

end


function GameOver:draw()
	World:draw()
	World:drawGround()

	love.graphics.setColor(0, 0, 0)
	love.graphics.setFont(self.Message.font)
	love.graphics.print(self.Message.text, self.Message.x - self.Message.xOffSet, self.Message.y)

	love.graphics.print(World.ScoreBoard.playerScore, self.Message.x, 100)

	RetryButton:draw()
	ExitButton:draw()
end
