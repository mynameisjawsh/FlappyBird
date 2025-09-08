require("collisions")

require("start")

require("gameworld")
require("player")
require("pipe")

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
		Player:flap()
	end
end
