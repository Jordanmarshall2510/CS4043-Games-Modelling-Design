local composer = require( "composer" )
local stats = require ( "stats" ) 
local timeSystem = require ( "timeSystem" ) 
local grade = require ( "grade" ) 
local assets = require ( "assets" ) 

local game = composer.newScene() 

function game:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
	
    if ( phase == "will" ) then
		assets.display()
	
    elseif ( phase == "did" ) then
		
		stats.unhide() 
		timeSystem.unhide() 
		assets.text() 

		--Advances time when buildings are clicked on--
		function timeOnwards(event)
			if(event.phase == "ended") then
				timeSystem.advanceTime(1)
			end
		end

		--Stats Assets--
		bed = display.newImageRect ( sceneGroup, "bed.png", 50, 55 )
		bed.x = 1650
		bed.y = 70

		food = display.newImageRect( sceneGroup, "food.png", 50, 50)
		food.x = 1640
		food.y = 150

		happiness = display.newImageRect( sceneGroup, "happiness.png", 50, 45)
		happiness.x = 1610
		happiness.y = 190

		hygiene = display.newImageRect( sceneGroup, "hygiene.png", 50, 40)
		hygiene.x = 1630
		hygiene.y = 110

		intel = display.newImageRect( sceneGroup, "intel.png", 60, 45)
		intel.x = 1610
		intel.y = 230

		money = display.newImageRect( sceneGroup, "money.png", 50, 40)
		money.x = 1630
		money.y = 30 

		
		--Character--
		student = display.newImageRect( sceneGroup, "student.png", 150, 150)
		student.x = display.contentCenterX
		student.y = display.contentCenterY
		student.name = "student";

		--Player movement--
		function onTouch(event)
			if(event.phase == "ended") then 
				transition.to(student, {x=event.x, y=event.y})
				print(event.x, event.y)
			end
		end
		Runtime:addEventListener("touch", onTouch)

		--Listens for a click on the buildings to advance time--
		library:addEventListener("touch", timeOnwards)
		house:addEventListener("touch", timeOnwards)
		bar:addEventListener("touch", timeOnwards)
		restaurant:addEventListener("touch", timeOnwards)
		foundationBuilding:addEventListener("touch", timeOnwards)

		--Events when clicking on the buildings--
		library:addEventListener("touch", lessSleep)
		library:addEventListener("touch", hungrier)
		library:addEventListener("touch", sadder)
		library:addEventListener("touch", smarter)

		house:addEventListener("touch", moreSleep)
		house:addEventListener("touch", shower)
		house:addEventListener("touch", hungrier)
		house:addEventListener("touch", sadder)
		house:addEventListener("touch", dumber)

		bar:addEventListener("touch", moneySpent)
		bar:addEventListener("touch", lessSleep)
		bar:addEventListener("touch", dirtier)
		bar:addEventListener("touch", hungrier)
		bar:addEventListener("touch", happier)
		bar:addEventListener("touch", dumber)

		restaurant:addEventListener("touch", moneySpent)
		restaurant:addEventListener("touch", lessSleep)
		restaurant:addEventListener("touch", eat)
		restaurant:addEventListener("touch", happier)

		foundationBuilding:addEventListener("touch", lessSleep)
		foundationBuilding:addEventListener("touch", hungrier)
		foundationBuilding:addEventListener("touch", sadder)
		foundationBuilding:addEventListener("touch", smarter)

		--Grant Payment--
		library:addEventListener("touch", grant)
		house:addEventListener("touch", grant)
		bar:addEventListener("touch", grant)
		restaurant:addEventListener("touch", grant)
		foundationBuilding:addEventListener("touch", grant)

		local native = native.showAlert("Introduction", "You recieve a grant payment of €500 every 4 days.", {"OK"}, enterLibrary)
		
		Runtime:addEventListener("touch", endGame)	
		
		end
	end
	
function game:destroy( event )
 
    local sceneGroup = self.view
    timeSystem.hide() 
	stats.hide()
	stats.defaultValues()
	assets.clear() 
 
end

function endGame(event) 
	if(stats.sleep <= 0 or stats.hygiene <= 0 or stats.hunger <= 0 or stats.happiness <=0 or stats.intel <= 0 or (timeSystem.day == 14  and timeSystem.time == 9)) then
		composer.removeScene( "game") 
		composer.gotoScene( "gameOver", {effect = "fromRight", time = 500} ) 
		end 
end 


game:addEventListener( "create", game )
game:addEventListener( "show", game )
game:addEventListener( "hide", game )
game:addEventListener( "destroy", game )

return game 