-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
local physics = require "physics"
local events = require "events"
local stats = require "stats" 
local assets = require "assets"

physics.start( )
physics.setGravity( 0, 0 )

local grass = display.newImageRect("grass.png", 1920, 1080)
grass.x = display.contentCenterX
grass.y = display.contentCenterY

--Intiially display stats, use stats.refresh from now on
stats.display()



local libraryOutline = graphics.newOutline( 2, "library.png" )

local student = display.newImageRect( "student.png", 70, 70 )
student.x = display.contentCenterX
student.y = display.contentCenterY

local library = display.newImageRect("library.png", 74, 87)
library.x = -200
library.y = 400

local foundationBuilding = display.newImageRect("foundationBuilding.png", 74, 87)
foundationBuilding.x = 500
foundationBuilding.y = 330

local house = display.newImageRect("house.png", 74, 87)
house.x = 100
house.y = 50

local MedicalSchool = display.newImageRect("MedicalSchool.png", 74, 87)
MedicalSchool.x = 300
MedicalSchool.y = 150

local SU = display.newImageRect("SU.png", 74, 87)
SU.x = -150
SU.y = 150







--Character physics and building physics-- 
physics.addBody( student, "dynamic", { bounce=0, angle=0 })
student.isFixedRotation = true 
physics.addBody( library, "dynamic", {isSensor=0})
physics.addBody( foundationBuilding, "dynamic", {isSensor=0})
physics.addBody( house, "dynamic", {isSensor=0})
physics.addBody( MedicalSchool, "dynamic", {isSensor=0})
physics.addBody( SU, "dynamic", {isSensor=0})


events.generateRandomEvent() 

