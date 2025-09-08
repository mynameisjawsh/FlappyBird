require("gameworld")

function love.load()
	World:load()
end


function love.update(dt)
	World:update(dt)
end


function love.draw()
	World:draw()
end
