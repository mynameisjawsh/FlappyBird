function play()
	if GameState.boot then
		GameState.boot = false
		GameState.play = true
		love.load()
	end
end


function playerDied()
	if GameState.play then
		GameState.play = false
		GameState.gameOver = true
		love.load()
	end
end
