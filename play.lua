Play = {}

function Play:load()
	World:load()
	Player:load()
	Pipe:load()
end


function Play:update(dt)
	World:update(dt)
	Player:update(dt)
	Pipe:update(dt)
end


function Play:draw()
	Pipe:draw()
	World:draw()
	Player:draw()
end
