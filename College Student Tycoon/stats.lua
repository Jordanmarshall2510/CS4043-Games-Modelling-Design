-- Stats --
local stats = { } 

function stats.defaultValues()
	--Money-- 
	stats.money = 500
	--Sleep--
	stats.sleep = 100
	--Hygeine--
	stats.hygiene = math.random(70,100) 
	--Hunger-- 
	stats.hunger = math.random(70,100) 
	--Happiness-- 
	stats.happiness = math.random(70,100)
	--Intelligence--
	stats.intel = 50
end

--Display everything, to be called in the main file-- 

function stats.text()
	stats.group = display.newGroup()
	
	stats.moneyText = display.newText( stats.group, "Money " .. stats.money, 1750, 30, native.systemFont , 40 )
	if stats.money <= 100 then 
		stats.moneyText:setFillColor( 255, 0, 0 )
	else 
		stats.moneyText:setFillColor( 0, 0, 0 )
	end
	
	stats.sleepText = display.newText( stats.group, "Sleep " .. stats.sleep, 1750, 70, native.systemFont , 40 )
	if stats.sleep <= 20 then 
		stats.sleepText:setFillColor( 255, 0, 0 )
	else 
		stats.sleepText:setFillColor( 0, 0, 0 )
	end

	stats.hygieneText = display.newText( stats.group, "Hygiene " .. stats.hygiene, 1750, 110, native.systemFont , 40 )
	if stats.hygiene <= 20 then 
		stats.hygieneText:setFillColor( 255, 0, 0 )
	else 
		stats.hygieneText:setFillColor( 0, 0, 0 )
	end

	stats.hungerText = display.newText( stats.group, "Hunger " .. stats.hunger, 1750, 150, native.systemFont , 40 )
	stats.hungerText:setFillColor( 0, 0, 0 )
	if stats.hunger <= 20 then 
		stats.hungerText:setFillColor( 255, 0, 0 )
	else 
		stats.hungerText:setFillColor( 0, 0, 0 )
	end

	stats.happinessText = display.newText( stats.group, "Happiness " .. stats.happiness, 1750, 190, native.systemFont , 40 )
	if stats.happiness <= 20 then 
		stats.happinessText:setFillColor( 255, 0, 0 )
	else 
		stats.happinessText:setFillColor( 0, 0, 0 )  
	end
	
	stats.intelText = display.newText( stats.group, "Intelligence " .. stats.intel, 1750, 230, native.systemFont , 40 )
	if stats.intel <= 20 then 
		stats.intelText:setFillColor( 255, 0, 0 )
	else 
		stats.intelText:setFillColor( 0, 0, 0 )
	end 
	
	stats.group.alpha = 0 
end

function stats.hide() 
	stats.group.alpha = 0 
end 

function stats.unhide() 
	stats.group.alpha = 1
end 

function stats.refresh() 
	stats.group:removeSelf() 
	stats.text() 
	stats.unhide() 
end 

return stats 
