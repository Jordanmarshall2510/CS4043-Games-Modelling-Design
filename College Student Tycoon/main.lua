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
local composer = require( "composer" )

--Title screen comes after the splash and the game starts from the title
--See relevant lua files  
composer.gotoScene ( "splash", {effect = "fade", time = 0}  )

physics.start( )
physics.setGravity( 0, 0 )

timeSystem.defaultValues() 
timeSystem.text() 

stats.defaultValues() 
stats.text() 
