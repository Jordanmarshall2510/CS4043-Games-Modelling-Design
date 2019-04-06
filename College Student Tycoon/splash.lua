--splash 

local composer = require( "composer" )
 
local splash = composer.newScene()

function splash:show( event )
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
	display.newText( sceneGroup, "Group 8 Presents", display.contentCenterX, display.contentCenterY , native.systemFont , 60 )

	elseif ( phase == "did" ) then 
	composer.removeScene( "splash" ) 
	composer.gotoScene( "title", {effect = "fade", time = 500} )
	end

end

splash:addEventListener( "create", splash )
splash:addEventListener( "show", splash )
splash:addEventListener( "hide", splash )
splash:addEventListener( "destroy", splash )

return splash 