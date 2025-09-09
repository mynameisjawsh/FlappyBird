World = {}

function World:load()
	self.BG = {
		sprite = love.graphics.newImage("Assets/Sprites/Exports/BG.png"),
		x = Screen.x,
		y = Screen.y,
		width = Screen.width,
		height = Screen.height,
		speed = 50
	} 

	self.Ground = {
		sprite = love.graphics.newImage("Assets/Sprites/Exports/Ground.png"),
		x = Screen.x,
		y = Screen.height - 112,
		width = Screen.width,
		height = Screen.height,
		speed = 100
	}
	self.ScoreBoard = {
		fontFill = love.graphics.newFont("Assets/Fonts/DIMITRI_.TTF", 64),
		fontOutline = love.graphics.newFont("Assets/Fonts/DIMIS___.TTF", 64),
		x = 0,
		y = 50,
		playerScore = 0
	}
end


function World:update(dt)
	self:scrollBG(dt)
	self:scrollGround(dt)
end


function World:scrollGround(dt)
	self.Ground.x = self.Ground.x - self.Ground.speed * dt

	if checkScrollPos(self.Ground, Screen) then
		self.Ground.x = Screen.x
	end
end


function World:scrollBG(dt)
	self.BG.x = self.BG.x - self.BG.speed * dt

	if checkScrollPos(self.BG, Screen) then
		self.BG.x = Screen.x
	end
end


function World:draw()
	love.graphics.setColor(1, 1, 1)
	love.graphics.draw(self.BG.sprite, self.BG.x, self.BG.y)
	love.graphics.draw(self.BG.sprite, self.BG.x + self.BG.width, self.BG.y)
end


function World:drawScoreBoard()
	love.graphics.setColor(0, 0, 0)
	love.graphics.setFont(self.ScoreBoard.fontOutline)
	love.graphics.printf(self.ScoreBoard.playerScore, self.ScoreBoard.x + 2, self.ScoreBoard.y - 3, 288, "center")

	love.graphics.setColor(1, 1, 1)
	love.graphics.setFont(self.ScoreBoard.fontFill)
	love.graphics.printf(self.ScoreBoard.playerScore, self.ScoreBoard.x, self.ScoreBoard.y, 288, "center")
end


function World:drawGround()
	love.graphics.setColor(1, 1, 1)
	love.graphics.draw(self.Ground.sprite, self.Ground.x, self.Ground.y)
	love.graphics.draw(self.Ground.sprite, self.Ground.x + self.Ground.width, self.Ground.y)
end
