-- Events --
local events = { } 
local stats = require "stats" 
local eventID = 1

function events.generateRandomEvent() 
	--eventID will be added as a random variable
		if(eventID == 1) --Night out, for instance
			then 
			stats.selfEsteem = stats.selfEsteem + 70 -- I propose renaming self esteem to sanity or happiness  
			stats.money = stats.money - 20 -- I'll add some randomisation to how much you lose
			stats.sleep = stats.sleep - 20
			stats.hygeine = stats.hygeine -25 
			--Always clear stats before new ones are displayed-- 
			stats.refresh()
		print(eventID)
		end
	end

return events