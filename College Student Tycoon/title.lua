--title screen 

local composer = require( "composer" )
local game = require( "game" ) 
 
local scene = composer.newScene()
 
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
	-- Code here runs when the scene is still off screen (but is about to come on screen)
	--Display background image--
	titleScreen = display.newImageRect( sceneGroup, "background.png", 1920, 1080)
	titleScreen.x = display.contentCenterX
	titleScreen.y = display.contentCenterY
	
    elseif ( phase == "did" ) then
		--Display play button image--
		playBtn = display.newImageRect( sceneGroup, "playButton.png", 400, 150)
		playBtn.x = 960
		playBtn.y = 700
		playBtn.name = "playbutton"

		--Make play button interactive--
		playBtn:addEventListener("touch", instructions)

		exitButton = display.newImageRect( sceneGroup, "exitButton.png", 300, 110)
		exitButton.x = 960
		exitButton.y = 850
		exitButton.name = "exit"

		exitButton:addEventListener("touch", exitGame)
    end
	
end

function exitGame(event)
	native.requestExit()
end
	
function instructions(event)
		if event.target.name == "playbutton" then
			composer.removeScene( "splash" )
			composer.removeScene( "title" )
			composer.gotoScene( "instructions", { effect = "fade", time = 1000 } ) 
		end 
end 
 
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
 
return scene
