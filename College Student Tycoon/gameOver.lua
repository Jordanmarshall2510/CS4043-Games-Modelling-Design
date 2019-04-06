--Restart Screen 

--title screen 

local composer = require( "composer" )
local game = require( "game" ) 
local grade = require ( "grade" ) 
local timeSystem = require ( "timeSystem" ) 
local stats = require ( "stats" )
 
local gameOver = composer.newScene()
 
function gameOver:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
	titleScreen = display.newImageRect( sceneGroup, "background.png", 1920, 1080)
	titleScreen.x = display.contentCenterX
	titleScreen.y = display.contentCenterY
	
    elseif ( phase == "did" ) then

		if(timeSystem.day < 14) then
			grade.gradeText = display.newText( sceneGroup, "You dropped out.", 960, 650 , "Ariel Black" , 50 )
			grade.gradeText:setFillColor( 1, 0, 0 )
		end

		if(timeSystem.day == 14) then
			grade.displayGrade()
		end
		
		local restart = display.newImageRect( sceneGroup, "restartButton.png", 300, 100)
		restart.x = 960
		restart.y = 800
		restart.name = "restart"

		restart:addEventListener( "touch", restartGame )
		
    end
	
end

function gameOver:destroy ( event ) 
		
		local sceneGroup = self.view 
end 
		


function restartGame(event) 
		if event.target.name == "restart" then 
			os.exit() 
		end 
end  
 
gameOver:addEventListener( "create", gameOver )
gameOver:addEventListener( "show", gameOver )
gameOver:addEventListener( "hide", gameOver )
gameOver:addEventListener( "destroy", gameOver )
 
return gameOver