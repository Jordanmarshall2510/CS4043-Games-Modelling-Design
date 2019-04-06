local timeSystem = { } 
--"time" is already used in Lua

function timeSystem.defaultValues()
	timeSystem.day = 1 
	timeSystem.time = 9 -- initial value, game starts at 9 AM
end 

function timeSystem.text() 
	timeSystem.inGameClock = display.newText("Day "..timeSystem.day.." - "..timeSystem.time ..":00" , 960, 20, native.systemFont , 40 )
	timeSystem.inGameClock:setFillColor( 0, 0, 0 )
	timeSystem.inGameClock.alpha = 0
end

function timeSystem.advanceTime(n) 
	timeSystem.time = timeSystem.time + n
	if timeSystem.time > 24 
	then
		timeSystem.time = timeSystem.time - 25
		timeSystem.day = timeSystem.day + 1
	end

timeSystem.inGameClock:removeSelf()
timeSystem.text() 
timeSystem.inGameClock.alpha = 1
end

function timeSystem.hide() 
	timeSystem.inGameClock.alpha = 0 
end 

function timeSystem.unhide() 
	timeSystem.inGameClock.alpha = 1
end 

return timeSystem