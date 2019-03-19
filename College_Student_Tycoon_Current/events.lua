-- Events --
local events = { } 
local stats = require "stats" 
local eventID = 1

function events.generateRandomEvent() 
	--eventID will be added as a random variable
		if(eventID == 1) --Night out, for instance
			then 
			stats.happiness= stats.happiness + 70 -- I propose renaming self esteem to sanity or happiness  
			stats.money = stats.money - 20 -- I'll add some randomisation to how much you lose
			stats.sleep = stats.sleep - 20
			stats.hygeine = stats.hygeine -25 
			--Always clear stats before new ones are displayed-- 
			stats.refresh()
		print(eventID)
		end
	end

--[[local function nightOut()
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
	selfEsteem = selfEsteem + math.random(10,80)
	sleep = sleep - math.random(10,80)
	hygeine = hygeine - math.random(10,50)
end]]

return events