require("collisions")

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
	World:load()
	Player:load()
	Pipe:load()
end


function love.update(dt)
	World:update(dt)
	Player:update(dt)
	Pipe:update(dt)
end


function love.draw()
	Pipe:draw()
	World:draw()
	Player:draw()
end


function love.mousepressed(x, y, button)
	if button == 1 then
		Player:flap()
	end
end
