function checkCollision(a, b)
	if a.x + a.width > b.x and a.x < b.x + b.width and a.y + a.height > b.y and a.y < b.y + b.height then
		return true
	else
		return false
	end
end


function checkPipePos(a, b)
	if a.x + a.width < b.x then
		return true
	else
		return false
	end
end


function checkPlayerPos(a, b)
	if a.x > b.x + b.width then
		return true
	else
		return false
	end
end
