-- Stats --
local stats = { } 

--Money-- 

stats.money = 1000

--Sleep--

stats.sleep = math.random(70,100)

--Hygeine--

stats.hygeine = math.random(70,100) 

--Hunger-- 

stats.hunger = math.random(70,100) 


--Happiness-- 

stats.happiness = math.random(70,100)

--Display everything, to be called in the main file-- 

function stats.display()
	
	stats.moneyText = display.newText("Money " .. stats.money, 500, 20, native.systemFont , 20 )
	stats.moneyText:setFillColor( 1, 1, 1 )

	stats.sleepText = display.newText("Sleep " .. stats.sleep, 500, 40, native.systemFont , 20 )
	stats.sleepText:setFillColor( 1, 1, 1 )

	stats.hygeineText = display.newText("Hygeine " .. stats.hygeine, 500, 60, native.systemFont , 20 )
	stats.hygeineText:setFillColor( 1, 1, 1 )

	stats.hungerText = display.newText("Hunger " .. stats.hunger, 500, 80, native.systemFont , 20 )
	stats.hungerText:setFillColor( 1, 1, 1 )

	stats.happinessText= display.newText("Happiness " .. stats.happiness, 500, 100, native.systemFont , 20 )
	stats.happinessText:setFillColor( 1, 1, 1 )
	
end

function stats.clear() 

	stats.moneyText:removeSelf()
	stats.hungerText:removeSelf()
	stats.sleepText:removeSelf()
	stats.hygeineText:removeSelf()
	stats.happinessText:removeSelf() 
	
end

function stats.refresh()
	stats.clear()
	stats.display()
end

return stats 