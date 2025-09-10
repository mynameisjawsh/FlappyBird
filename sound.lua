Sound = {}

function Sound:load()
	self.clickButton = love.audio.newSource("Assets/Sound/Exports/ClickButton.wav", "static")
	self.flap = love.audio.newSource("Assets/Sound/Exports/Flap.wav", "static")
	self.goal = love.audio.newSource("Assets/Sound/Exports/Goal.wav", "static")
	self.death = love.audio.newSource("Assets/Sound/Exports/Death.wav", "static")
end


function Sound:update()
	if checkCollision(Player, World.Ground) or checkCollision(Player, Pipe.TopPipe) or checkCollision(Player, Pipe.BottomPipe) then
		love.audio.play(self.death)
	end
end


function Sound:playClickButton()
	love.audio.play(self.clickButton)
end


function Sound:playFlap()
	love.audio.stop(self.flap)
	love.audio.play(self.flap)
end


function Sound:playGoal()
	love.audio.play(self.goal)
end
