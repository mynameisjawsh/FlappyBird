Sound = {}

function Sound:load()
	self.clickButton = love.audio.newSource("Assets/Sound/Exports/ClickButton.wav", "static")
	self.flap = love.audio.newSource("Assets/Sound/Exports/Flap.wav", "static")
end


function Sound:update()
		
end


function Sound:playClickButton()
	love.audio.play(self.clickButton)
end


function Sound:playFlap()
	love.audio.stop()
	love.audio.play(self.flap)
end
