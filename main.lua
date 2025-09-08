require("gameworld")

Screen = {}
Screen.x = 0
Screen.y = 0
Screen.width = love.graphics.getWidth()
Screen.height = love.graphics.getHeight()

function love.load()
	World:load()
end


function love.update(dt)
	World:update(dt)
end


function love.draw()
	World:draw()
end
