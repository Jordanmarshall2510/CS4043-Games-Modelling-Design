-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
local physics = require "physics"
local events = require "events"
local stats = require "stats" 
local timeSystem = require "timeSystem"

physics.start( )
physics.setGravity( 0, 0 )

--Background--
local grass = display.newImageRect("grass.png", 1920, 1080)
grass.x = display.contentCenterX
grass.y = display.contentCenterY

--Stats Assets--
local bed = display.newImageRect("bed.png", 40, 40)
bed.x = 1650
bed.y = 70

local food = display.newImageRect("food.png", 40, 40)
food.x = 1640
food.y = 150

local happiness = display.newImageRect("happiness.png", 40, 40)
happiness.x = 1610
happiness.y = 190

local hygiene = display.newImageRect("hygiene.png", 40, 40)
hygiene.x = 1630
hygiene.y = 110

local intel = display.newImageRect("intel.png", 40, 40)
intel.x = 1610
intel.y = 230

local money = display.newImageRect("money.png", 40, 40)
money.x = 1630
money.y = 30

--Assets
local foundationBuilding = display.newImageRect("foundationBuilding.png", 250, 250)
foundationBuilding.x = 100
foundationBuilding.y = 500

local house = display.newImageRect("house.png", 250, 250)
house.x = 1700
house.y = 700

local library = display.newImageRect("library.png", 250, 250)
library.x = 1200
library.y = 200
library.name = "library"



local medicalSchool = display.newImageRect("medicalSchool.png", 250, 250)
medicalSchool.x = 250
medicalSchool.y = 150

local SU = display.newImageRect("SU.png", 250, 250)
SU.x = 550
SU.y = 800

local tree = display.newImageRect("tree.png", 250, 250)
tree.x = 1250
tree.y = 850

local tree = display.newImageRect("tree.png", 250, 250)
tree.x = 700
tree.y = 150

--Character--
local student = display.newImageRect("student.png", 150, 150)
student.x = display.contentCenterX
student.y = display.contentCenterY

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



--Trying to make buildings into buttons--
function enterLibrary(event)
	if(event.phase == "ended") then
	textBox = display.newImage("house.png");
	textBox.x = 240;
	textBox.y = 160;

	conditionDisplay = display.newText("library is open", 0, 0, "Arial", 38);
	conditionDisplay:setTextColor(255,255,255,255);
	conditionDisplay.xScale = 0.5;
	conditionDisplay.yScale = 0.5;
	--[[conditionDisplay:setReferencePoint(display.CenterReferencePoint);
	conditionDisplay.x = display.contentCenterX;
	conditionDisplay.y = display.contentCenterY - 15;

	textBoxGroup = display.newGroup();
	textBoxGroup:insert(textBox);
	textBoxGroup:insert(conditionDisplay);
	textBoxGroup:insert(messageText);
	
	textBox:addEventListener("touch", restart);]]--
	end
end
library:addEventListener("touch", enterLibrary)


--TextBoxes--
