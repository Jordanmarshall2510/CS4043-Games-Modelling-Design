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
foundationBuilding.x = 250
foundationBuilding.y = 850
foundationBuilding.name = "foundationBuilding"

local house = display.newImageRect("house.png", 250, 250)
house.x = 1700
house.y = 500
house.name = "house"

local library = display.newImageRect("library.png", 250, 250)
library.x = 1200
library.y = 200
library.name = "library"

local medicalSchool = display.newImageRect("medicalSchool.png", 250, 250)
medicalSchool.x = 330
medicalSchool.y = 180
medicalSchool.name = "medicalSchool"

local SU = display.newImageRect("SU.png", 250, 250)
SU.x = 960
SU.y = 900
SU.name = "SU"



--Character--
local student = display.newImageRect("student.png", 150, 150)
student.x = display.contentCenterX
student.y = display.contentCenterY

--Trees--
local tree = display.newImageRect("tree.png", 250, 250)
tree.x = 1550
tree.y = 850

local tree = display.newImageRect("tree.png", 250, 250)
tree.x = 700
tree.y = 150

local tree = display.newImageRect("tree.png", 250, 250)
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



--Trying to make buildings into buttons--
function enterLibrary(event)
	if(event.phase == "ended") then
	textBox = display.newImageRect("textbox.png", 320, 150)
	textBox.x = 960
	textBox.y = 540

	conditionDisplay = display.newText("Study for 1 hour?", 960, 520, "Arial", 40)
	conditionDisplay:setTextColor(0, 0, 0)
	conditionDisplay.xScale = 1
	conditionDisplay.yScale = 1
	--[[conditionDisplay:setReferencePoint(display.CenterReferencePoint);
	conditionDisplay.x = display.contentCenterX;
	conditionDisplay.y = display.contentCenterY - 15;

	textBoxGroup = display.newGroup();
	textBoxGroup:insert(textBox);
	textBoxGroup:insert(conditionDisplay);
	textBoxGroup:insert(messageText);
	
	textBox:addEventListener("touch", restart);]]--
	end

	textBox = display.newImageRect("textboxGreen.png", 80, 50)
	textBox.x = 900
	textBox.y = 580

	conditionDisplay = display.newText("yes", 900, 575, "Arial", 40)
	conditionDisplay:setTextColor(0, 0, 0);
	conditionDisplay.xScale = 1
	conditionDisplay.yScale = 1

	textBox = display.newImageRect("textboxRed.png", 80, 50)
	textBox.x = 1010
	textBox.y = 580

	conditionDisplay = display.newText("No", 1010, 580, "Arial", 40)
	conditionDisplay:setTextColor(0, 0, 0);
	conditionDisplay.xScale = 1
	conditionDisplay.yScale = 1

end
library:addEventListener("touch", enterLibrary)


--TextBoxes--
function enterMedicalSchool(event)
	if(event.phase == "ended") then
	textBox = display.newImageRect("textbox.png", 420, 150)
	textBox.x = 960
	textBox.y = 540

	conditionDisplay = display.newText("Attend lab for 2 hours?", 960, 520, "Arial", 40)
	conditionDisplay:setTextColor(0, 0, 0)
	conditionDisplay.xScale = 1
	conditionDisplay.yScale = 1

	end

	textBox = display.newImageRect("textboxGreen.png", 80, 50)
	textBox.x = 900
	textBox.y = 580

	conditionDisplay = display.newText("yes", 900, 575, "Arial", 40)
	conditionDisplay:setTextColor(0, 0, 0);
	conditionDisplay.xScale = 1
	conditionDisplay.yScale = 1

	textBox = display.newImageRect("textboxRed.png", 80, 50)
	textBox.x = 1010
	textBox.y = 580

	conditionDisplay = display.newText("No", 1010, 580, "Arial", 40)
	conditionDisplay:setTextColor(0, 0, 0);
	conditionDisplay.xScale = 1
	conditionDisplay.yScale = 1

end
medicalSchool:addEventListener("touch", enterMedicalSchool)


function enterSU(event)
	if(event.phase == "ended") then
	textBox = display.newImageRect("textbox.png", 540, 150)
	textBox.x = 960
	textBox.y = 540

	conditionDisplay = display.newText("Relax with friends for 1 hour?", 960, 520, "Arial", 40)
	conditionDisplay:setTextColor(0, 0, 0)
	conditionDisplay.xScale = 1
	conditionDisplay.yScale = 1

	end

	textBox = display.newImageRect("textboxGreen.png", 80, 50)
	textBox.x = 900
	textBox.y = 580

	conditionDisplay = display.newText("yes", 900, 575, "Arial", 40)
	conditionDisplay:setTextColor(0, 0, 0);
	conditionDisplay.xScale = 1
	conditionDisplay.yScale = 1

	textBox = display.newImageRect("textboxRed.png", 80, 50)
	textBox.x = 1010
	textBox.y = 580

	conditionDisplay = display.newText("No", 1010, 580, "Arial", 40)
	conditionDisplay:setTextColor(0, 0, 0);
	conditionDisplay.xScale = 1
	conditionDisplay.yScale = 1

end
SU:addEventListener("touch", enterSU)


function enterfoundationBuilding(event)
	if(event.phase == "ended") then
	textBox = display.newImageRect("textbox.png", 500, 150)
	textBox.x = 960
	textBox.y = 540

	conditionDisplay = display.newText("Attend lecture for 1 hour?", 960, 520, "Arial", 40)
	conditionDisplay:setTextColor(0, 0, 0)
	conditionDisplay.xScale = 1
	conditionDisplay.yScale = 1

	end

	textBox = display.newImageRect("textboxGreen.png", 80, 50)
	textBox.x = 900
	textBox.y = 580

	conditionDisplay = display.newText("yes", 900, 575, "Arial", 40)
	conditionDisplay:setTextColor(0, 0, 0);
	conditionDisplay.xScale = 1
	conditionDisplay.yScale = 1

	textBox = display.newImageRect("textboxRed.png", 80, 50)
	textBox.x = 1010
	textBox.y = 580

	conditionDisplay = display.newText("No", 1010, 580, "Arial", 40)
	conditionDisplay:setTextColor(0, 0, 0);
	conditionDisplay.xScale = 1
	conditionDisplay.yScale = 1

end
foundationBuilding:addEventListener("touch", enterfoundationBuilding)



function enterHouse(event)
	if(event.phase == "began") then
	textBox = display.newImageRect("textbox.png", 600, 150)
	textBox.x = 960
	textBox.y = 540

	conditionDisplay = display.newText("Do you want to sleep for 1 hour?", 960, 520, "Arial", 40)
	conditionDisplay:setTextColor(0, 0, 0);
	conditionDisplay.xScale = 1
	conditionDisplay.yScale = 1

	end
	textboxGreen = display.newImageRect("textboxGreen.png", 80, 50)
	textboxGreen.x = 900
	textboxGreen.y = 580

	conditionDisplay = display.newText("yes", 900, 575, "Arial", 40)
	conditionDisplay:setTextColor(0, 0, 0);
	conditionDisplay.xScale = 1
	conditionDisplay.yScale = 1

	textboxRed = display.newImageRect("textboxRed.png", 80, 50)
	textboxRed.x = 1010
	textboxRed.y = 580

	conditionDisplay = display.newText("No", 1010, 580, "Arial", 40)
	conditionDisplay:setTextColor(0, 0, 0);
	conditionDisplay.xScale = 1
	conditionDisplay.yScale = 1
	



	--[[if(event.phase == "ended") then
		display.remove(textBox)
	end]]




end



local function onComplete(event)
	if(event.action == "clicked") then
		local i = event.index
		if(i == 1) then
		elseif(i == 2) then
			system.openURL("http://www.coronalabs.com")
		end
	end
end



local alert = native.showAlert("Corona", "Sleep for 1 hour?", { "yes", "no"},enterHouse)
--house:addEventListener("touch", enterHouse)

