require("collisions")
require("statehandler")
require("sound")

require("start")
require("play")
require("gameover")

require("gameworld")
require("player")
require("pipe")
require("button")

Screen = {}
Screen.x = 0
Screen.y = 0
Screen.width = love.graphics.getWidth()
Screen.height = love.graphics.getHeight()

GameState = {}
GameState.boot = true
GameState.play = false
GameState.gameOver = false

highScore = 0

function love.load()
	Sound:load()

	if GameState.boot then
		Start:load()
	elseif GameState.play then
		Play:load()
	elseif GameState.gameOver then
		GameOver:load()
	end
end


function love.update(dt)
	if GameState.boot then
		Start:update(dt)
	elseif GameState.play then
		Play:update(dt)
		Sound:update()
	end
end


function love.draw()
	if GameState.boot then
		Start:draw()
	elseif GameState.play then
		Play:draw()
	elseif GameState.gameOver then
		GameOver:draw()
	end
end


function saveHighScore(newScore)
	if newScore > highScore then
		highScore = newScore
		love.filesystem.write("highscores.txt", tostring(highScore))
	end
end


function love.mousepressed(x, y, button)
	if button == 1 then
		if GameState.boot then
			
			if x > PlayButton.x - 37.5 and x < PlayButton.x - 37.5 + PlayButton.width and y > PlayButton.y and y < PlayButton.y + PlayButton.height then
				Sound:playClickButton()	
				PlayButton.pressed = true
			else
				PlayButton.pressed = false
			end

			if x > ExitButton.x - 37.5 and x < ExitButton.x - 37.5 + ExitButton.width and y > ExitButton.y and y < ExitButton.y + ExitButton.height then
				Sound:playClickButton()
				ExitButton.pressed = true
			else
				ExitButton.pressed = false
			end
		elseif GameState.gameOver then
			
			if x > RetryButton.x - 37.5 and x < RetryButton.x - 37.5 + RetryButton.width and y > RetryButton.y and y < RetryButton.y + RetryButton.height then
				Sound:playClickButton()
				RetryButton.pressed = true
			else
				RetryButton.pressed = false
			end


			if x > ExitButton.x - 37.5 and x < ExitButton.x - 37.5 + ExitButton.width and y > ExitButton.y and y < ExitButton.y + ExitButton.height then
				Sound:playClickButton()
				ExitButton.pressed = true
			else
				ExitButton.pressed = false
			end
		elseif GameState.play then
			Player:flap()
		end
	end
end


function love.mousereleased(x, y, button)
	if button == 1 then
		if GameState.boot then

			if x > PlayButton.x - 37.5 and x < PlayButton.x - 37.5 + PlayButton.width and y > PlayButton.y and y < PlayButton.y + PlayButton.height then
				play()
			end

			if x > ExitButton.x - 37.5 and x < ExitButton.x - 37.5 + ExitButton.width and y > ExitButton.y and y < ExitButton.y + ExitButton.height then
				love.event.quit()
			end

		elseif GameState.gameOver then

			if x > RetryButton.x - 37.5 and x < RetryButton.x - 37.5 + RetryButton.width and y > RetryButton.y and y < RetryButton.y + RetryButton.height then
				retry()
			end

			if x > ExitButton.x - 37.5 and x < ExitButton.x - 37.5 + ExitButton.width and y > ExitButton.y and y < ExitButton.y + ExitButton.height then
				love.event.quit()
			end
		end
	end
end
