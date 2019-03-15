-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
local physics = require "physics"
local events = require "events"
local stats = require "stats" 

physics.start( )
physics.setGravity( 0, 0 )

local grass = display.newImageRect("grass.png", 1920, 1080)
grass.x = display.contentCenterX
grass.y = display.contentCenterY

<<<<<<< HEAD
=======-----------------------------------------------------------------------------------------
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




--Intiially display stats, use stats.refresh from now on
stats.display()



local libraryOutline = graphics.newOutline( 2, "library.png" )

>>>>>>> f82fcd235f8d6cca3f79c7605a280e6c044cf67b
local library = display.newImageRect("library.png", 74, 87)
library.x = -200
library.y = 400

local foundationBuilding = display.newImageRect("foundationBuilding.png", 74, 87)
foundationBuilding.x = 500
foundationBuilding.y = 330

local house = display.newImageRect("house.png", 120, 100)
house.x = 100
house.y = 50

local MedicalSchool = display.newImageRect("MedicalSchool.png", 74, 87)
MedicalSchool.x = 300
MedicalSchool.y = 150

local SU = display.newImageRect("SU.png", 74, 87)
SU.x = -150
SU.y = 150

<<<<<<< HEAD
local student = display.newImageRect( "student.png", 70, 70 )
student.x = display.contentCenterX
student.y = display.contentCenterY

function onTouch(event)
	if(event.phase == "ended") then 
	transition.to(student, {x=event.x, y=event.y})
	print(event.x, event.y)
	end
end
Runtime:addEventListener("touch", onTouch)

--Intiially display stats, use stats.refresh from now on
--Display stats and time after all the other buildings so that the stats are 
--in the foreground
stats.display()
timeSystem.displayTime()
timeSystem.advanceTime(5) -- just here to demosntrate that time advancement does work
=======
>>>>>>> f82fcd235f8d6cca3f79c7605a280e6c044cf67b


local bed = display.newImageRect("bed.png", 25, 25)
bed.x = 450
bed.y = 40

local food = display.newImageRect("food.png", 23, 23)
food.x = 440
food.y = 80

local money = display.newImageRect("money.png", 22, 18)
money.x = 440
money.y = 19

local happiness = display.newImageRect("happiness.png", 23, 20)
happiness.x = 420
happiness.y = 100

local hygiene = display.newImageRect("hygiene.png", 25, 20)
hygiene.x = 440
hygiene.y = 60

local intel = display.newImageRect("intel.png", 30, 25)
intel.x = 430
intel.y = 120



local student = display.newImageRect( "student.png", 70, 70 )
student.x = display.contentCenterX
student.y = display.contentCenterY

function onTouch(event)
	if(event.phase == "ended") then 
	transition.to(student, {x=event.x, y=event.y})
	print(event.x, event.y)
	end
end
Runtime:addEventListener("touch", onTouch)



--Character physics and building physics-- 
physics.addBody( student, "dynamic", { bounce=0, angle=0 })
student.isFixedRotation = true 
physics.addBody( library, "dynamic", {isSensor=0})
physics.addBody( foundationBuilding, "dynamic", {isSensor=0})
physics.addBody( house, "dynamic", {isSensor=0})
physics.addBody( MedicalSchool, "dynamic", {isSensor=0})
physics.addBody( SU, "dynamic", {isSensor=0})


events.generateRandomEvent() 


