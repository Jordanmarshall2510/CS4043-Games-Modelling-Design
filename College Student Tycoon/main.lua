-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
local physics = require "physics"
physics.start( )
physics.setGravity( 0, 0 ) -- prevents the character from falling off 

local money = 0
local sleep = 100
local hygeine = 100 
local hunger = 100 
local happiness = 100
local grass = display.newImageRect("grass.png", 1920, 1080)
grass.x = display.contentCenterX
grass.y = display.contentCenterY

local library = display.newImageRect("library.png", 74, 87)
library.x = -222
library.y = 412
local libraryOutline = graphics.newOutline( 2, "library.png" )


local student = display.newImageRect( "student.png", 70, 70 )
student.x = display.contentCenterX
student.y = display.contentCenterY

local moneyText = display.newText("Money " .. money, 500, 20, native.systemFont , 20 )
moneyText:setFillColor( 1, 1, 1 )

local sleepText = display.newText("Sleep " .. sleep, 500, 40, native.systemFont , 20 )
sleepText:setFillColor( 1, 1, 1 )

local hygeineText = display.newText("Hygeine " .. hygeine, 500, 60, native.systemFont , 20 )
hygeineText:setFillColor( 1, 1, 1 )

local hungerText = display.newText("Hunger " .. hunger, 500, 80, native.systemFont , 20 )
hungerText:setFillColor( 1, 1, 1 )

local happinessText = display.newText("happiness " .. happiness, 500, 100, native.systemFont , 20 )
moneyText:setFillColor( 1, 1, 1 )

-----Moves sprite to coords of touch-----
local function onTouch(event)
	if(event.phase == "ended") then 
	transition.to(student, {x=event.x, y=event.y})
	print(event.x, event.y)
	end
end
Runtime:addEventListener("touch", onTouch)

--Character physics and building physics-- 
--[TODO: Make it so the building is rock solid and the character can't go through it at all]-- 
physics.addBody( student, "dynamic", { bounce=0, angle=0 })
student.isFixedRotation = true 
physics.addBody( library, "static")

--Random events, only an example
local function randomEvent() 
	--eventID will be added as a random variable
		if(eventID == 1) --Night out, for instance
			then 
			happiness = happiness + 70 -- I propose renaming self esteem to sanity or happiness  
			money = money - 20 -- I'll add some randomisation to how much you lose
			sleep = sleep - 20
			hygeine = hygeine -25
		end
	end
