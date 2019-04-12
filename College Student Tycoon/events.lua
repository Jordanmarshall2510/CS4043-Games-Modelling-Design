-- Events --
local events = { } 
local stats = require "stats"
local timeSystem = require "timeSystem"
local eventID = 1

function grant(event)  
	if(event.phase == "ended") then
		if (timeSystem.day == 4 or timeSystem.day == 8 or timeSystem.day == 12) and timeSystem.time == 9 then 
			stats.money = stats.money + 500
			stats.refresh()
		end
	end
end 

--Events when the buildings are clicked on--
 function smarter(event) 
	if event.target.name == "library" then 
		knowledge = math.random( 5, 7)
		else 
		knowledge = math.random(3, 5) 
	end 
	if(event.phase == "ended") then
		if(stats.intel < 100) then
			stats.intel = stats.intel + knowledge
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
			stats.intel = stats.intel - math.random(1, 3)
			stats.refresh()
		end
	end
end


 function moreSleep(event) 
	if(event.phase == "ended") then
		if(stats.sleep < 100) then
			stats.sleep = stats.sleep + math.random(10, 20)
			stats.refresh()
		end
		if(stats.sleep > 100) then
			stats.sleep = 100
			stats.refresh()
		end
	end
end

function lessSleep(event)
	local exhaustion = 0 
	if event.target.name == "library" then 
		exhaustion = math.random(15, 20) 
		else 
		exhaustion = math.random(5, 10) 
	end 
	if(event.phase == "ended") then
		if(stats.sleep <= 100) then
			stats.sleep = stats.sleep - exhaustion
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
	local joy = 0 
	if event.target.name == "bar" then 
		joy = math.random(30, 70) 
		else 
		joy = math.random(5, 10) 
	end
	if(event.phase == "ended") then
		if(stats.happiness < 100) then
			stats.happiness = stats.happiness + joy
			stats.refresh()
		end
		if(stats.happiness > 100) then
			stats.happiness = 100
			stats.refresh()
		end
	end
end

function sadder(event) 
	local sadness = 0 
	if event.target.name == "library" then 
		sadness = math.random(10, 20) 
		else 
		sadness = math.random(3, 7 ) 
	end
	if(event.phase == "ended") then
		if(stats.happiness <= 100) then
			stats.happiness = stats.happiness - sadness 
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
			stats.hunger = stats.hunger + math.random(25, 30)
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
			stats.hunger = stats.hunger - math.random(5, 10)
			stats.refresh()
		end
	end
end


function moneySpent(event)
	local bill = 0
	if event.target.name == "bar" then
		bill = math.random(40, 100)
		else
		bill = math.random(25, 50)
	end
	if(event.phase == "ended") then
		if(stats.money > 0) then
			stats.money = stats.money - bill
			stats.refresh()
		end
		if(stats.money < 0) then
			stats.money = 0
			stats.refresh()
		end
	end
end

return events