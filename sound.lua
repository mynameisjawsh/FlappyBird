Sound = {}

function Sound:load()
	self.clickButton = love.audio.newSource("Assets/Sound/Exports/ClickButton.wav", "static")
	self.flap = love.audio.newSource("Assets/Sound/Exports/Flap.wav", "static")
	self.goal = love.audio.newSource("Assets/Sound/Exports/Goal.wav", "static")
end


function Sound:update()
	if checkPlayerPos(Player, Pipe.TopPipe) then
		love.audio.play(self.goal)
	end
end


function Sound:playClickButton()
	love.audio.play(self.clickButton)
end


function Sound:playFlap()
	love.audio.stop()
	love.audio.play(self.flap)
end
