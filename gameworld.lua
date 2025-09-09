World = {}

function World:load()
	self.BG = {
		sprite = love.graphics.newImage("Assets/Sprites/Exports/BG.png"),
		x = Screen.x,
		y = Screen.y,
		width = Screen.width,
		height = Screen.height,
		speed = 150
	} 

	self.Ground = {
		x = Screen.x,
		y = Screen.height - 112,
		width = Screen.width,
		height = Screen.height
	}
	self.ScoreBoard = {
		font = love.graphics.newFont(64),
		x = Screen.width / 2,
		y = 50,
		playerScore = 0
	}
end


function World:update(dt)
	
end


function World:draw()
	love.graphics.setColor(1, 1, 1)
	love.graphics.draw(self.BG.sprite, self.BG.x, self.BG.y)
end


function World:drawScoreBoard()
	love.graphics.setColor(0, 0, 0)
	love.graphics.setFont(self.ScoreBoard.font)
	love.graphics.print(self.ScoreBoard.playerScore, self.ScoreBoard.x, self.ScoreBoard.y)
end


function World:drawGround()
	love.graphics.setColor(0, 0.75, 0)
	love.graphics.rectangle("fill", self.Ground.x, self.Ground.y, self.Ground.width, self.Ground.height)
end
