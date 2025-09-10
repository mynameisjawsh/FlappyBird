Sound = {}

function Sound:load()
	self.clickButton = love.audio.newSource("Assets/Sound/Exports/ClickButton.wav", "static")
end


function Sound:update()

end


function Sound:playClickButton()
	love.audio.play(self.clickButton)
end
