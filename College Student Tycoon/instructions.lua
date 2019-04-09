--[[local composer  = require ("composer")
local title = require ("title")
local instructions = composer.newscene()

function instructions:show( event )
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
	display.newImage( sceneGroup, "instructions.png", display.contentCenterX, display.contentCenterY , native.systemFont , 60 )

	elseif ( phase == "did" ) then 
	composer.removeScene( "instructions" ) 
	composer.gotoScene( "title", {effect = "fade", time = 5000} )
	end

end

splash:addEventListener( "create", instructions )
splash:addEventListener( "show", instructions )
splash:addEventListener( "hide", instructions )
splash:addEventListener( "destroy", instructions )

return instructions--]]