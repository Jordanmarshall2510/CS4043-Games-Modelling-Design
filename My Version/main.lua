-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
local physics = require "physics"
physics.start( )
physics.setGravity( 0, 0 ) -- prevents the character from falling off 

local money = 100
local sleep = 100
local hygeine = 100 
local hunger = 100 
local happiness = 100
local intelligence = 100


local background = display.newImageRect( "background.png", 1920, 1080 )
background.x = display.contentCenterX
background.y = display.contentCenterY



local moneyText = display.newText("Money " .. money, 1700, 40, native.systemFont , 50 )
moneyText:setFillColor( 1, 1, 1 )

local sleepText = display.newText("Sleep " .. sleep, 1712, 85, native.systemFont , 50 )
sleepText:setFillColor( 1, 1, 1 )

local hygeineText = display.newText("Hygeine " .. hygeine, 1685, 130, native.systemFont , 50 )
hygeineText:setFillColor( 1, 1, 1 )

local hungerText = display.newText("Hunger " .. hunger, 1695, 175, native.systemFont , 50 )
hungerText:setFillColor( 1, 1, 1 )

local happinessText = display.newText("Happiness " .. happiness, 1658, 220, native.systemFont , 50 )
moneyText:setFillColor( 1, 1, 1 )

local intelligenceText = display.newText("Intelligence " .. intelligence, 1650, 265, native.systemFont , 50 )
moneyText:setFillColor( 1, 1, 1 )


local money = display.newImageRect( "money.png", 40, 40)
money.x = display.contentWidth-360
money.y = display.contentHeight-1040

local happiness = display.newImageRect( "happiness.png", 50, 50)
happiness.x = display.contentWidth-450
happiness.y = display.contentHeight-860

local food = display.newImageRect( "food.png", 50, 50)
food.x = display.contentWidth-380
food.y = display.contentHeight-905

local intel = display.newImageRect( "intel.png", 50, 50)
intel.x = display.contentWidth-460
intel.y = display.contentHeight-815

local hygiene = display.newImageRect( "hygiene.png", 50, 50)
hygiene.x = display.contentWidth-410
hygiene.y = display.contentHeight-950

local bed = display.newImageRect( "bed.png", 50,50)
bed.x = display.contentWidth-345
bed.y = display.contentHeight-995

local SU = display.newImageRect( "SU.png", 180, 200)
SU.x = display.contentWidth-1750
SU.y = display.contentHeight-900

local house = display.newImageRect( "house.png", 250, 200)
house.x = display.contentWidth-1725
house.y = display.contentHeight-750

local medicalSchool = display.newImageRect( "medicalSchool.png", 180, 200)
medicalSchool.x = display.contentWidth-1750
medicalSchool.y = display.contentHeight-550

local foundationBuilding = display.newImageRect( "foundationBuilding.png", 180, 200)
foundationBuilding.x = display.contentWidth-1750
foundationBuilding.y = display.contentHeight-350

local library = display.newImageRect( "library.png", 180, 200)
library.x = display.contentWidth-1750
library.y = display.contentHeight-130

local student = display.newImageRect( "student.png", 180, 200 )
student.x = display.contentCenterX
student.y = display.contentCenterY

local Tree = display.newImageRect( "Tree.png", 180, 200)
Tree.x = display.contentWidth-250
Tree.y = display.contentHeight-200

local Tree = display.newImageRect( "Tree.png", 180, 200)
Tree.x = display.contentWidth-250
Tree.y = display.contentHeight-400







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
physics.addBody( library, "dynamic", {isSensor = true})
physics.addBody( foundationBuilding, "dynamic", {isSensor = true})
physics.addBody( medicalSchool, "dynamic", {isSensor = true})
physics.addBody( house, "dynamic", {isSensor = true})
physics.addBody( SU, "dynamic", {isSensor = true})
--Random events, only an example
local function randomEvent() 
	--eventID will be added as a random variable
		if(eventID == 1) --Night out, for instance
			then 
			happiness = happiness + 70 
			money = money - 20 -- I'll add some randomisation to how much you lose
			sleep = sleep - 20
			hygeine = hygeine -25
		end
	end