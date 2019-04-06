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
		
		stats.defaultValues()
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

		foundationBuilding = display.newImageRect( sceneGroup, "foundationBuilding.png", 250, 250)
		foundationBuilding.x = 250
		foundationBuilding.y = 850
		foundationBuilding.name = "foundationBuilding"

		house = display.newImageRect( sceneGroup, "house.png", 250, 250)
		house.x = 330
		house.y = 200
		house.name = "house"

		library = display.newImageRect( sceneGroup, "library.png", 250, 250)
		library.x = 1200
		library.y = 200
		library.name = "library"

		bar = display.newImageRect( sceneGroup, "bar.png", 250, 250)
		bar.x = 1700
		bar.y = 550
		bar.name = "bar"

		restaurant = display.newImageRect( sceneGroup, "restaurant.png", 250, 250)
		restaurant.x = 960
		restaurant.y = 900
		restaurant.name = "restaurant" 
		
		--Character--
		student = display.newImageRect( sceneGroup, "student.png", 150, 150)
		student.x = display.contentCenterX
		student.y = display.contentCenterY
		student.name = "student";
		
		--Trees--
		tree1 = display.newImageRect( sceneGroup, "tree.png", 400, 300)
		tree1.x = 1550
		tree1.y = 850

		tree2 = display.newImageRect( sceneGroup, "tree.png", 450, 300)
		tree2.x = 700
		tree2.y = 150

		tree3 = display.newImageRect( sceneGroup, "tree.png", 270, 250)
		tree3.x = 200
		tree3.y = 500	

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

		--local native = native.showAlert("Introduction", "You recieve a grant payment of €500 every 4 days.", {"OK"}, enterLibrary)
		
		Runtime:addEventListener("touch", endGame)	
		
		end
	end
	
function game:destroy( event )
 
    local sceneGroup = self.view
    timeSystem.hide() 
	stats.defaultValues()
	stats.hide()
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
