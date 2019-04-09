local composer = require( "composer" )
local game = require("game")
 
local instructions = composer.newScene()

function instructions:show( event )
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
	display.newImage( sceneGroup, "instructions.png", display.contentCenterX, display.contentCenterY , native.systemFont , 60 )

	elseif ( phase == "did" ) then 
	playButton = display.newImageRect( sceneGroup, "playButton.png", 200, 75)
	playButton.x = 1700 
	playButton.y = 1000
	playButton.name = "play" 
	
	playButton:addEventListener("touch", startGame)
	end
end
	
function startGame(event)
	composer.gotoScene( "game", {effect = "fade", time = 700} )
	playButton:removeEventListener("touch", startGame)
end

instructions:addEventListener( "create", instructions )
instructions:addEventListener( "show", instructions )
instructions:addEventListener( "hide", instructions )
instructions:addEventListener( "destroy", instructions )

return instructions 