-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
local physics = require "physics"
local events = require "events"
local stats = require "stats" 
local timeSystem = require "timeSystem"
local grade = require "grade"

physics.start( )
physics.setGravity( 0, 0 )

--Background--
local grass = display.newImageRect("grass.png", 2000, 1200)
grass.x = display.contentCenterX
grass.y = display.contentCenterY

--Buildings text--
local houseText = display.newText("House", 290, 100 , native.systemFont , 40 )
houseText:setFillColor( 0, 0, 0 )

local libraryText = display.newText("Library", 1200, 50 , native.systemFont , 40 )
libraryText:setFillColor( 0, 0, 0 )

local barText = display.newText("The Horse Club", 1680, 400 , native.systemFont , 40 )
barText:setFillColor( 0, 0, 0 )

local restaurantText = display.newText("Restaurant", 960, 770 , native.systemFont , 40 )
restaurantText:setFillColor( 0, 0, 0 )

local foundationBuildingText = display.newText("Foundation Building", 250, 730 , native.systemFont , 40 )
foundationBuildingText:setFillColor( 0, 0, 0 )

--Stats Assets--
local bed = display.newImageRect("bed.png", 60, 40)
bed.x = 1650
bed.y = 70

local food = display.newImageRect("food.png", 50, 50)
food.x = 1640
food.y = 150

local happiness = display.newImageRect("happiness.png", 50, 45)
happiness.x = 1610
happiness.y = 190

local hygiene = display.newImageRect("hygiene.png", 50, 40)
hygiene.x = 1630
hygiene.y = 110

local intel = display.newImageRect("intel.png", 60, 45)
intel.x = 1610
intel.y = 230

local money = display.newImageRect("money.png", 50, 40)
money.x = 1630
money.y = 30

--Assets--
foundationBuilding = display.newImageRect("foundationBuilding.png", 250, 250)
foundationBuilding.x = 250
foundationBuilding.y = 850
foundationBuilding.isSensor = true
foundationBuilding.name = "foundationBuilding"

house = display.newImageRect("house.png", 250, 250)
house.x = 330
house.y = 200
house.isSensor = true
house.name = "house"

library = display.newImageRect("library.png", 250, 250)
library.x = 1200
library.y = 200
library.isSensor = true
library.name = "library"

bar = display.newImageRect("bar.png", 250, 250)
bar.x = 1700
bar.y = 550
bar.isSensor = true
bar.name = "bar"

restaurant = display.newImageRect("restaurant.png", 250, 250)
restaurant.x = 960
restaurant.y = 900
restaurant.isSensor = true
restaurant.name = "restaurant"

--Remove Buildings--
function removeAssets()
	restaurant:removeSelf()
end

if(stats.hunger <= 0) then
library:addEventListener("touch", removeAssets)
end
--Character--
local student = display.newImageRect("student.png", 150, 150)
student.x = display.contentCenterX
student.y = display.contentCenterY

--Trees--
local tree = display.newImageRect("tree.png", 400, 300)
tree.x = 1550
tree.y = 850

local tree = display.newImageRect("tree.png", 450, 300)
tree.x = 700
tree.y = 150

local tree = display.newImageRect("tree.png", 270, 250)
tree.x = 200
tree.y = 500

--Movement--
function onTouch(event)
	if(event.phase == "ended") then 
	transition.to(student, {x=event.x, y=event.y})
	print(event.x, event.y)
	end
end
Runtime:addEventListener("touch", onTouch)

--Intiially display stats, use stats.refresh from now on
stats.display()

timeSystem.displayTime()

--Advances time when buildings are clicked on--
local function timeOnwards(event)
	if(event.phase == "ended") then
		timeSystem.advanceTime(1)
	end
end

--Listens for a click on the buildings to advance time--
library:addEventListener("touch", timeOnwards)
house:addEventListener("touch", timeOnwards)
bar:addEventListener("touch", timeOnwards)
restaurant:addEventListener("touch", timeOnwards)
foundationBuilding:addEventListener("touch", timeOnwards)

--Events when clicking on the buildings--
library:addEventListener("touch", lessSleep)
library:addEventListener("touch", hungrier)
library:addEventListener("touch", sadder)
library:addEventListener("touch", smarter)

house:addEventListener("touch", moreSleep)
house:addEventListener("touch", shower)
house:addEventListener("touch", hungrier)
house:addEventListener("touch", sadder)
house:addEventListener("touch", dumber)

bar:addEventListener("touch", moneySpent)
bar:addEventListener("touch", lessSleep)
bar:addEventListener("touch", dirtier)
bar:addEventListener("touch", hungrier)
bar:addEventListener("touch", happier)
bar:addEventListener("touch", dumber)

restaurant:addEventListener("touch", moneySpent)
restaurant:addEventListener("touch", lessSleep)
restaurant:addEventListener("touch", eat)
restaurant:addEventListener("touch", happier)

foundationBuilding:addEventListener("touch", lessSleep)
foundationBuilding:addEventListener("touch", hungrier)
foundationBuilding:addEventListener("touch", sadder)
foundationBuilding:addEventListener("touch", smarter)


--local native = native.showAlert("Introduction", "If you click on one of the buildings then you will advance time by an hour and also change your stats depending on the building.", {"OK"}, enterLibrary)

function restart( event )
	if(event.phase == "ended") then
		local grass = display.newImageRect("grass.png",1920, 1080)
		grass.x = display.contentCenterX
		grass.y = display.contentCenterY
	end
end

--[[local function myButtonHandler( event )

	local myButton = display.newCircle(960,540)
	myButton:setFillColor(1,0,0)
 
    if (event.phase == "began") then  
 
    	myText.text = "Button Phase is: " .. event.phase
    	myButton.xScale = 0.85 -- Scale the button on touch down so user knows its pressed
    	myButton.yScale = 0.85
 
 
    elseif (event.phase == "moved") then
 
    	myText.text = "Button Phase is: " .. event.phase
 
    elseif (event.phase == "ended" or event.phase == "cancelled") then
 
    	myText.text = "Button Phase is: " .. event.phase
    	myButton.xScale = 1 -- Re-scale the button on touch release 
    	myButton.yScale = 1
 
-- Add a touch event handler to myButton
myButton:addEventListener("touch", myButtonHandler)
    end
        return true
 
end ]]--
 



function dies( event )
	if(event.phase == "ended") then
		if(stats.hunger <= 0) then
		elseif(stats.sleep <= 0 or stats.hygiene <= 0 or stats.happiness <=0 or stats.intel <= 0) then
			
			

			local background = display.newImageRect("background.png", 1920, 1080)
			background.x = display.contentCenterX
			background.y = display.contentCenterY

			grade.display()

			--[[local textboxGreen = display.newImageRect("textboxGreen.png", 300, 100)
			textboxGreen.x = 960
			textboxGreen.y = 800
			textboxGreen.name = "textboxGreen"

			conditionDisplay = display.newText("Restart", 960, 800, "Arial Black", 50)
			conditionDisplay:setTextColor(1, 0, 0)]]--

			







			conditionDisplay = display.newText("Game End", 960, 650, "Arial Black", 120);
			conditionDisplay:setTextColor(1, 0, 0);
			

			--textboxGreen:addEventListener("touch", restart)

		end 
	end
end


Runtime:addEventListener("touch", dies)

