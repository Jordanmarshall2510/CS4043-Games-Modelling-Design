--Game--

local composer = require("composer")
local stats = require ("stats") 
local timeSystem = require ("timeSystem") 
local grade = require ("grade") 
local assets = require ("assets") 

local game = composer.newScene() 

local backgroundMusic = audio.loadStream("music.mp3")
local backgroundMusicChannel = audio.play( backgroundMusic, { channel=1, loops=-1, fadein=5000 } )

function game:show(event)
 
    local sceneGroup = self.view
    local phase = event.phase
	
    if(phase == "will") then
		assets.display()
	
    elseif(phase == "did") then
		stats.unhide() 
		timeSystem.unhide() 
		assets.text() 

		--Advances time when buildings are clicked on--
		function timeOnwards(event)
			if(event.phase == "ended") then
				timeSystem.advanceTime(2)
			end
		end

		--Stats Assets--
		bed = display.newImageRect (sceneGroup, "bed.png", 50, 55)
		bed.x = 1640
		bed.y = 70

		food = display.newImageRect(sceneGroup, "food.png", 50, 50)
		food.x = 1630
		food.y = 150

		happiness = display.newImageRect(sceneGroup, "happiness.png", 50, 45)
		happiness.x = 1600
		happiness.y = 190

		hygiene = display.newImageRect(sceneGroup, "hygiene.png", 50, 40)
		hygiene.x = 1620
		hygiene.y = 110

		intel = display.newImageRect(sceneGroup, "intel.png", 60, 45)
		intel.x = 1600
		intel.y = 230

		money = display.newImageRect(sceneGroup, "money.png", 50, 40)
		money.x = 1620
		money.y = 30 

		--Assets--
		foundationBuilding = display.newImageRect(sceneGroup, "foundationBuilding.png", 250, 250)
		foundationBuilding.x = 250
		foundationBuilding.y = 850
		foundationBuilding.name = "foundationBuilding"

		house = display.newImageRect(sceneGroup, "house.png", 250, 250)
		house.x = 330
		house.y = 200
		house.name = "house"

		library = display.newImageRect(sceneGroup, "library.png", 250, 250)
		library.x = 1200
		library.y = 200
		library.name = "library"

		bar = display.newImageRect(sceneGroup, "bar.png", 250, 250)
		bar.x = 1700
		bar.y = 550
		bar.name = "bar"

		restaurant = display.newImageRect(sceneGroup, "restaurant.png", 250, 250)
		restaurant.x = 1550
		restaurant.y = 900
		restaurant.name = "restaurant" 
		
		--Character--
		student = display.newImageRect(sceneGroup, "student.png", 150, 150)
		student.x = display.contentCenterX
		student.y = display.contentCenterY
		student.name = "student";
		
		--Trees--
		tree1 = display.newImageRect(sceneGroup, "tree.png", 400, 300)
		tree1.x = 960
		tree1.y = 900

		tree2 = display.newImageRect(sceneGroup, "tree.png", 450, 300)
		tree2.x = 700
		tree2.y = 150

		tree3 = display.newImageRect(sceneGroup, "tree.png", 270, 250)
		tree3.x = 200
		tree3.y = 500	

		--Exit button--
		exitButton = display.newImageRect(sceneGroup, "exitButton.png", 100, 50)
		exitButton.x = 100
		exitButton.y = 1030
		exitButton.name = "exit"

		exitButton:addEventListener("touch", exitGame)

		--Player movement--
		function onTouch(event)
			if(event.phase == "ended") then 
				transition.to(student, {x=event.x, y=event.y})
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
		house:addEventListener("touch", dumber)

		bar:addEventListener("touch", moneySpent)
		bar:addEventListener("touch", lessSleep)
		bar:addEventListener("touch", eat)
		bar:addEventListener("touch", dirtier)
		bar:addEventListener("touch", hungrier)
		bar:addEventListener("touch", happier)
		bar:addEventListener("touch", dumber)

		restaurant:addEventListener("touch", moneySpent)
		restaurant:addEventListener("touch", lessSleep)
		restaurant:addEventListener("touch", eat)
		restaurant:addEventListener("touch", happier)
		restaurant:addEventListener("touch", dirtier)
		restaurant:addEventListener("touch", dumber)

		foundationBuilding:addEventListener("touch", lessSleep)
		foundationBuilding:addEventListener("touch", hungrier)
		foundationBuilding:addEventListener("touch", sadder)
		foundationBuilding:addEventListener("touch", smarter)
		foundationBuilding:addEventListener("touch", dirtier)

		--Grant Payment--
		library:addEventListener("touch", grant)
		house:addEventListener("touch", grant)
		bar:addEventListener("touch", grant)
		restaurant:addEventListener("touch", grant)
		foundationBuilding:addEventListener("touch", grant)
		
		Runtime:addEventListener("touch", endGame)	
		
		end
	end
	
function game:destroy(event)
    local sceneGroup = self.view
	endDay = timeSystem.day 
	endHappiness = stats.happiness 
	endSleep = stats.sleep
	endHunger = stats.hunger
	endInt = stats.intel
    timeSystem.hide() 
	stats.hide()
	stats.defaultValues()
	timeSystem.defaultValues()
	assets.clear() 
end

function endGame(event) 
	if(stats.money <= 0 or stats.sleep <= 0 or stats.hygiene <= 0 or stats.hunger <= 0 or stats.happiness <= 0 or stats.intel <= 0 or timeSystem.day == 14) then
		composer.removeScene("game") 
		composer.gotoScene("gameOver", {effect = "fade", time = 500}) 
	end 
end 

game:addEventListener("create", game)
game:addEventListener("show", game)
game:addEventListener("hide", game)
game:addEventListener("destroy", game)

return game 
