-- Stats --
local stats = { } 

--Money-- 

stats.money = 500

--Sleep--

stats.sleep = math.random(70,100)

--Hygeine--

stats.hygiene = math.random(70,100) 

--Hunger-- 

stats.hunger = math.random(70,100) 

--Happiness-- 

stats.happiness = math.random(70,100)

--Intelligence--

stats.intel = math.random(70,100)

--Display everything, to be called in the main file-- 

function stats.display()
	
	stats.moneyText = display.newText("Money " .. stats.money, 1750, 30, native.systemFont , 40 )
	stats.moneyText:setFillColor( 0, 0, 0 )

	stats.sleepText = display.newText("Sleep " .. stats.sleep, 1750, 70, native.systemFont , 40 )
	stats.sleepText:setFillColor( 0, 0, 0 )

	stats.hygieneText = display.newText("Hygiene " .. stats.hygiene, 1750, 110, native.systemFont , 40 )
	stats.hygieneText:setFillColor( 0, 0, 0 )

	stats.hungerText = display.newText("Hunger " .. stats.hunger, 1750, 150, native.systemFont , 40 )
	stats.hungerText:setFillColor( 0, 0, 0 )

	stats.happinessText = display.newText("Happiness " .. stats.happiness, 1750, 190, native.systemFont , 40 )
	stats.happinessText:setFillColor( 0, 0, 0 )
	
	stats.intelText = display.newText("Intelligence " .. stats.intel, 1750, 230, native.systemFont , 40 )
	stats.intelText:setFillColor( 0, 0, 0 )
end

function stats.clear() 

	stats.moneyText:removeSelf()
	stats.hungerText:removeSelf()
	stats.sleepText:removeSelf()
	stats.hygieneText:removeSelf()
	stats.happinessText:removeSelf() 
	stats.intelText:removeSelf()
	
end

function stats.refresh()
	stats.clear()
	stats.display()
end

return stats 