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

--Adds a title screen to the game--
function showTitleScreen()	
	
	--Place all title screen elements into 1 group--
	titleScreenGroup = display.newGroup()

	--Display background image--
	titleScreen = display.newImageRect("background.png", 1920, 1080)
	titleScreen.x = display.contentCenterX
	titleScreen.y = display.contentCenterY
	
	--Display play button image--
	playBtn = display.newImageRect("playButton.png", 400, 150)
	playBtn.x = 960
	playBtn.y = 700
	playBtn.name = "playbutton"

	--Insert background and button into group--
	titleScreenGroup:insert(titleScreen)
	titleScreenGroup:insert(playBtn)

	--Make play button interactive--
	playBtn:addEventListener("tap", loadGame)
end

--Runs the Main Function--
function main()
	showTitleScreen()
end

--When play button is tapped, start the game--
function loadGame(event)
	if event.target.name == "playbutton" then
		transition.to(titleScreenGroup,{time = 0, alpha=0, onComplete = initializeGameScreen});
		playBtn:removeEventListener("tap", loadGame);
	end
end

--Run the game--
main()
