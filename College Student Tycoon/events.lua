-- Events --
local events = { } 
local stats = require "stats" 
local eventID = 1

function events.generateRandomEvent() 
	--eventID will be added as a random variable
		if(eventID == 1) --Night out, for instance
			then 
			selfEsteem = selfEsteem + 70 -- I propose renaming self esteem to sanity or happiness  
			money = money - 20 -- I'll add some randomisation to how much you lose
			sleep = sleep - 20
			hygeine = hygeine -25 
		print(eventID)
		end
	end

return events