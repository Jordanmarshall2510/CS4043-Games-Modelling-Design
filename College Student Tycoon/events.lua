-- Events --
local events = { } 
local stats = require "stats"
local timeSystem = require "timeSystem"
local eventID = 1

--Random events--
function grant()
	if(timeSystem.day == 4 and timeSystem.time == 9 or timeSystem.day == 8 and timeSystem.time == 9 or timeSystem.day == 12 and timeSystem.time == 9) then
		stats.money = stats.money + 250
		stats.refresh()
	end
end

--Events when the buildings are clicked on--
 function smarter(event) 
	if(event.phase == "ended") then
		if(stats.intel < 100) then
			stats.intel = stats.intel + math.random(2, 7)
			stats.refresh()
		end
		if(stats.intel > 100) then
			stats.intel = 100
			stats.refresh()
		end
	end
end

function dumber(event)
	if(event.phase == "ended") then
		if(stats.intel <= 100) then
			stats.intel = stats.intel - math.random(2, 5)
			stats.refresh()
		end
	end
end


 function moreSleep(event) 
	if(event.phase == "ended") then
		if(stats.sleep < 100) then
			stats.sleep = stats.sleep + math.random(5, 16)
			stats.refresh()
		end
		if(stats.sleep > 100) then
			stats.sleep = 100
			stats.refresh()
		end
	end
end

function lessSleep(event)
	if(event.phase == "ended") then
		if(stats.sleep <= 100) then
			stats.sleep = stats.sleep - math.random(5, 10)
			stats.refresh()
		end
	end
end


function shower(event)
	if(event.phase == "ended") then
		if(stats.hygiene < 100) then
			stats.hygiene = stats.hygiene + math.random(5, 15)
			stats.refresh()
		end
		if(stats.hygiene > 100) then
			stats.hygiene = 100
			stats.refresh()
		end
	end
end

function dirtier(event)
	if(event.phase == "ended") then
		if(stats.hygiene <= 100) then
			stats.hygiene = stats.hygiene - math.random(3,8)
			stats.refresh()
		end
	end
end


 function happier(event) 
	if(event.phase == "ended") then
		if(stats.happiness < 100) then
			stats.happiness = stats.happiness + math.random(3, 10)
			stats.refresh()
		end
		if(stats.happiness > 100) then
			stats.happiness = 100
			stats.refresh()
		end
	end
end

function sadder(event) 
	if(event.phase == "ended") then
		if(stats.happiness <= 100) then
			stats.happiness = stats.happiness - math.random(2, 8)
			stats.refresh()
		end
		if(stats.happiness < 0) then
			stats.happiness = 0
			stats.refresh()
		end
	end
end


 function eat(event) 
	if(event.phase == "ended") then
		if(stats.hunger < 100) then
			stats.hunger = stats.hunger + math.random(8, 16)
			stats.refresh()
		end
		if(stats.hunger > 100) then
			stats.hunger = 100
			stats.refresh()
		end
	end
end

function hungrier(event)
	if(event.phase == "ended") then
		if(stats.hunger <= 100) then
			stats.hunger = stats.hunger - math.random(4, 10)
			stats.refresh()
		end
	end
end


function moneySpent(event)
	if(event.phase == "ended") then
		if(stats.money > 0) then
			stats.money = stats.money - math.random(5, 25)
			stats.refresh()
		end
		if(stats.money < 0) then
			stats.money = 0
			stats.refresh()
		end
	end
end

return events
