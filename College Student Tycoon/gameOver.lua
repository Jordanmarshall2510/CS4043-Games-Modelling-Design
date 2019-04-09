--Restart Screen 
--Title screen 

local composer = require("composer")
local game = require("game") 
local grade = require ("grade") 
local timeSystem = require ("timeSystem") 
local stats = require ("stats")
 
local gameOver = composer.newScene()
 
function gameOver:show(event)
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if (phase == "will") then
	titleScreen = display.newImageRect(sceneGroup, "background.png", 1920, 1080)
	titleScreen.x = display.contentCenterX
	titleScreen.y = display.contentCenterY
	
    elseif (phase == "did") then

		if(timeSystem.day < 13) then
			grade.gradeText = display.newText(sceneGroup, "You dropped out.", 960, 650 , "Ariel Black" , 50)
			grade.gradeText:setFillColor( 1, 0, 0 )
		end

		if(timeSystem.day == 13) then
			grade.displayGrade()
		end
		
		local restart = display.newImageRect(sceneGroup, "restartButton.png", 300, 100)
		restart.x = 960
		restart.y = 770
		restart.name = "restart"

		restart:addEventListener("touch", restartGame)

		local exit = display.newImageRect(sceneGroup, "exitButton.png", 250, 75)
		exit.x = 960
		exit.y = 920
		exit.name = "exit"

		exit:addEventListener("touch", exitGame)
    end
end

function exitGame(event)
	native.requestExit()
end

function gameOver:destroy (event) 	
	local sceneGroup = self.view 
end 

function restartGame(event) 
		if event.target.name == "restart" then 
			composer.removeScene("gameOver") 
			composer.gotoScene("game") 
		end 
end  
 
gameOver:addEventListener("create", gameOver)
gameOver:addEventListener("show", gameOver)
gameOver:addEventListener("hide", gameOver)
gameOver:addEventListener("destroy", gameOver)
 
return gameOver
