local composer = require( "composer" )
local game = require("game")
 
local instructions = composer.newScene()

function instructions:show( event )
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
	display.newImage( sceneGroup, "instructions.png", display.contentCenterX, display.contentCenterY , native.systemFont , 60 )

	elseif ( phase == "did" ) then 
	composer.removeScene( "instructions" ) 
	composer.gotoScene( "game", {effect = "fromRight", time = 20000} )
	end

end

instructions:addEventListener( "create", instructions )
instructions:addEventListener( "show", instructions )
instructions:addEventListener( "hide", instructions )
instructions:addEventListener( "destroy", instructions )

return instructions 