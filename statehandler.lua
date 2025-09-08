function play()
	if GameState.boot then
		GameState.boot = false
		GameState.play = true
		love.load()
	end
end
