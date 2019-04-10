local composer = require("composer")
local game = require("game")
 
local instructions = composer.newScene()

function instructions:show(event)
    local sceneGroup = self.view
    local phase = event.phase
 
    if (phase == "will") then
		display.newImage( sceneGroup, "instructions.png", display.contentCenterX, display.contentCenterY)

	elseif (phase == "did") then 
		nextButton = display.newImageRect( sceneGroup, "playButton.png", 200, 75)
		nextButton.x = 1700 
		nextButton.y = 1000
	
		nextButton:addEventListener("touch", startGame)
	end
end
	
function startGame(event)
	composer.gotoScene("game", {effect = "fade", time = 700})
	nextButton:removeEventListener("touch", startGame)
end

instructions:addEventListener("create", instructions)
instructions:addEventListener("show", instructions)
instructions:addEventListener("hide", instructions)
instructions:addEventListener("destroy", instructions)

return instructions 
