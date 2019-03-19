local timeSystem = { } 
--"time" is already used in Lua

timeSystem.day = 1 
timeSystem.time = 9 -- initial value, game starts at 9 AM

function timeSystem.displayTime() 
	timeSystem.inGameClock = display.newText("Day"..timeSystem.day.." "..timeSystem.time ..":00" , 960, 20, native.systemFont , 40 )
	timeSystem.inGameClock:setFillColor( 0, 0, 0 )

end

function timeSystem.clear() 
	timeSystem.inGameClock:removeSelf()
end

function timeSystem.advanceTime(n) 
	timeSystem.time = timeSystem.time + n
	if timeSystem.time > 24 
	then
		timesystem.time = timeSystem.time - 24 
		day = day + 1
	end

	timeSystem.displayTime()
end 

return timeSystem