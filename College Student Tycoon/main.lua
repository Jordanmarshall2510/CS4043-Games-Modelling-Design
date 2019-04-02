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

--Intiially display stats, use stats.refresh from now on
stats.display()

local library = display.newImageRect("library.png", 74, 87)
library.x = -222
library.y = 412

local student = display.newImageRect( "student.png", 70, 70 )
student.x = display.contentCenterX
student.y = display.contentCenterY

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

local Tree = display.newImageRect( "Tree.png", 180, 200)
Tree.x = display.contentWidth-250
Tree.y = display.contentHeight-200

local Tree = display.newImageRect( "Tree.png", 180, 200)
Tree.x = display.contentWidth-250
Tree.y = display.contentHeight-400


--Character physics and building physics-- 
physics.addBody( student, "dynamic", { bounce=0, angle=0 })
student.isFixedRotation = true 
physics.addBody( library, "static")

events.generateRandomEvent() 




