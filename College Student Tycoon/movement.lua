-- Movement --
-----Moves sprite to coords of touch-----

local movement = { } 

function movement.onTouch(movement.event)
	if(movement.event.phase == "ended") then 
	transition.to(student, {x=movement.event.x, y=movement.event.y})
	print(movement.event.x, movement.event.y)
	end
end
Runtime:addEventListener("touch", movement.onTouch)

return movement 