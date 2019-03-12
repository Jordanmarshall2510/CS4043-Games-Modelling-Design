-- Stats --
local stats = { } 

--Money-- 

stats.money = 0

--Sleep--

stats.sleep = 100

--Hygeine--

stats.hygeine = 100 

--Hunger-- 

stats.hunger = 100 

--Self esteem -- 

stats.selfEsteem = 100

--Display everything, to be called in the main file-- 

function stats.display()
	while ( true ) 
	do
		stats.moneyText = display.newText("Money " .. stats.money, 500, 20, native.systemFont , 20 )
		stats.moneyText:setFillColor( 1, 1, 1 )

		stats.sleepText = display.newText("Sleep " .. stats.sleep, 500, 40, native.systemFont , 20 )
		stats.sleepText:setFillColor( 1, 1, 1 )

		stats.hygeineText = display.newText("Hygeine " .. stats.hygeine, 500, 60, native.systemFont , 20 )
		stats.hygeineText:setFillColor( 1, 1, 1 )

		stats.hungerText = display.newText("Hunger " .. stats.hunger, 500, 80, native.systemFont , 20 )
		stats.hungerText:setFillColor( 1, 1, 1 )

		stats.selfEsteemText = display.newText("Self Esteem " .. stats.selfEsteem, 500, 100, native.systemFont , 20 )
		stats.moneyText:setFillColor( 1, 1, 1 )
		
		stats.moneyText:removeSelf()
		stats.hungerText:removeSelf()
		stats.sleepText:removeSelf()
		stats.hygeineText:removeSelf()
		stats.selfEsteemText:removeSelf() 
	end
end

return stats 
