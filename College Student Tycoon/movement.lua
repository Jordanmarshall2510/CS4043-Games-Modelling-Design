-- Movement --

local movement = { } 

--I don't know if we're using this movement anymore, if we're doing WASD, please implement it
function onTouch(event)
	if(event.phase == "ended") then 
	transition.to(student, {x=event.x, y=event.y})
	print(event.x, event.y)
	end
end
Runtime:addEventListener("touch", onTouch)


return movement 