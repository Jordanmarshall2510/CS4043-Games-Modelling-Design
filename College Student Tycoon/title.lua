--title screen 

local composer = require( "composer" )
local game = require( "game" ) 
 
local scene = composer.newScene()
 
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
 
-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------
 
function scene:create( event )
 
    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen
 
end
 
 
-- show()
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
		playBtn:addEventListener("touch", loadGame)

		exit = display.newImageRect( sceneGroup, "exitButton.png", 300, 110)
		exit.x = 960
		exit.y = 850
		exit.name = "exit"

		exit:addEventListener("touch", exitGame)
    end
	
end

function exitGame(event)
	os.exit()
end
 
function loadGame(event)
		if event.target.name == "playbutton" then
			composer.removeScene( "splash" )
			composer.removeScene( "title" )
			composer.gotoScene( "game", { effect = "fade", time = 1000 } ) 
		end 
end 
 
-- hide()
function scene:hide( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is on screen (but is about to go off screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs immediately after the scene goes entirely off screen
 
    end
end
 
 
-- destroy()
function scene:destroy( event )
 
    local sceneGroup = self.view
    -- Code here runs prior to the removal of scene's view
 
end
 
 
-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------
 
return scene
