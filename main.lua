require("collisions")
require("statehandler")

require("start")

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

function love.load()
	if GameState.boot then
		Start:load()
	end
end


function love.update(dt)
	if GameState.boot then
		Start:update(dt)
	end
end


function love.draw()
	if GameState.boot then
		Start:draw()
	end
end


function love.mousepressed(x, y, button)
	if button == 1 then
		if GameState.boot then

			if x > PlayButton.x - 60 and x < PlayButton.x - 60 + PlayButton.width and y > PlayButton.y and y < PlayButton.y + PlayButton.height then
				play()
			end
		
		elseif GameState.play then
			Player:flap()
		end
	end
end
