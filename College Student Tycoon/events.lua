-- Events --
local events = { } 
local stats = require "stats"
local timeSystem = require "timeSystem"
local eventID = 1

--[[function events.generateRandomEvent() 
	--eventID will be added as a random variable
		if(eventID == 1) --Night out, for instance
			then 
			stats.happiness= stats.happiness + 70  
			stats.money = stats.money - 20 -- I'll add some randomisation to how much you lose
			stats.sleep = stats.sleep - 20
			stats.hygeine = stats.hygeine -25 
			--Always clear stats before new ones are displayed-- 
			stats.refresh()
		print(eventID)
		end
	end]]

--Random events--
local function nightOut()
	sleep = sleep - math.random(10, 70)
	hunger = hunger - math.random(10, 40)
	money = money - math.random(40, 200)
end

local function lostMoney()
	money = money - math.random(10,200)
end

local function skipLecture()
	sleep = sleep + math.random(5,50)
	money = money - math.random(5,50)
end

local function workOvertime()
	sleep = sleep - math.random(5,70)
	money = money + math.random(20,400)
end

local function extraStudy()
	happiness = happiness + math.random(10,80)
	sleep = sleep - math.random(10,80)
	hygeine = hygeine - math.random(10,50)
end

--Events when the buildings are clicked on--
 function smarter(event) 
	if(event.phase == "ended") then
		if(stats.intel < 100) then
			stats.intel = stats.intel + math.random(3, 10)
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
			stats.intel = stats.intel - math.random(3, 10)
			stats.refresh()
		end
	end
end


 function moreSleep(event) 
	if(event.phase == "ended") then
		if(stats.sleep < 100) then
			stats.sleep = stats.sleep + math.random(3, 10)
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
			stats.sleep = stats.sleep - math.random(3, 10)
			stats.refresh()
		end
	end
end


function shower(event)
	if(event.phase == "ended") then
		if(stats.hygiene < 100) then
			stats.hygiene = stats.hygiene + math.random(3, 10)
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
			stats.hygiene = stats.hygiene - math.random(3,10)
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
			stats.happiness = stats.happiness - math.random(3, 10)
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
			stats.hunger = stats.hunger + math.random(3, 10)
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
			stats.hunger = stats.hunger - math.random(3, 10)
			stats.refresh()
		end
	end
end


function moneySpent(event)
	if(event.phase == "ended") then
		if(stats.money > 0) then
			stats.money = stats.money - math.random(20, 100)
			stats.refresh()
		end
		if(stats.money < 0) then
			stats.money = 0
			stats.refresh()
		end
	end
end



return events
