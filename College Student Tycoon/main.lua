-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
local physics = require "physics"
local events = require "events"
local stats = require "stats" 
local timeSystem = require "timeSystem"
local grade = require "grade"

physics.start( )
physics.setGravity( 0, 0 )

--Adds a title screen to the game--
function showTitleScreen()	
	
	--Place all title screen elements into 1 group--
	titleScreenGroup = display.newGroup()

	--Display background image--
	titleScreen = display.newImageRect("background.png", 1920, 1080)
	titleScreen.x = display.contentCenterX
	titleScreen.y = display.contentCenterY
	
	--Display play button image--
	playBtn = display.newImageRect("playButton.png", 400, 150)
	playBtn.x = 960
	playBtn.y = 700
	playBtn.name = "playbutton"

	--Insert background and button into group--
	titleScreenGroup:insert(titleScreen)
	titleScreenGroup:insert(playBtn)

	--Make play button interactive--
	playBtn:addEventListener("tap", loadGame)
end

--Runs the Main Function--
function main()
	showTitleScreen()
end

--When play button is tapped, start the game--
function loadGame(event)
	if event.target.name == "playbutton" then
		transition.to(titleScreenGroup,{time = 0, alpha=0, onComplete = initializeGameScreen});
		playBtn:removeEventListener("tap", loadGame);
	end
end

--Starts the game with all assets in--
function initializeGameScreen()
	
	--Background--
	grass = display.newImageRect("grass.png", 2000, 1200);
	grass.x = 960
	grass.y = 540
	grass:toBack()

	--Intiially display stats, use stats.refresh from now on--
	stats.display()
	timeSystem.displayTime()

	--Advances time when buildings are clicked on--
	local function timeOnwards(event)
		if(event.phase == "ended") then
			timeSystem.advanceTime(1)
		end
	end

	--Stats Assets--
	local bed = display.newImageRect("bed.png", 60, 40)
	bed.x = 1650
	bed.y = 70

	local food = display.newImageRect("food.png", 50, 50)
	food.x = 1640
	food.y = 150

	local happiness = display.newImageRect("happiness.png", 50, 45)
	happiness.x = 1610
	happiness.y = 190

	local hygiene = display.newImageRect("hygiene.png", 50, 40)
	hygiene.x = 1630
	hygiene.y = 110

	local intel = display.newImageRect("intel.png", 60, 45)
	intel.x = 1610
	intel.y = 230

	local money = display.newImageRect("money.png", 50, 40)
	money.x = 1630
	money.y = 30

	--Assets--
	foundationBuilding = display.newImageRect("foundationBuilding.png", 250, 250)
	foundationBuilding.x = 250
	foundationBuilding.y = 850
	foundationBuilding.name = "foundationBuilding"

	house = display.newImageRect("house.png", 250, 250)
	house.x = 330
	house.y = 200
	house.name = "house"

	library = display.newImageRect("library.png", 250, 250)
	library.x = 1200
	library.y = 200
	library.name = "library"

	bar = display.newImageRect("bar.png", 250, 250)
	bar.x = 1700
	bar.y = 550
	bar.name = "bar"

	restaurant = display.newImageRect("restaurant.png", 250, 250)
	restaurant.x = 960
	restaurant.y = 900
	restaurant.name = "restaurant"

	--Buildings text--
	local houseText = display.newText("House", 290, 100 , native.systemFont , 40 )
	houseText:setFillColor( 0, 0, 0 )

	local libraryText = display.newText("Library", 1200, 50 , native.systemFont , 40 )
	libraryText:setFillColor( 0, 0, 0 )

	local barText = display.newText("The Horse Club", 1680, 400 , native.systemFont , 40 )
	barText:setFillColor( 0, 0, 0 )

	local restaurantText = display.newText("Restaurant", 960, 770 , native.systemFont , 40 )
	restaurantText:setFillColor( 0, 0, 0 )

	local foundationBuildingText = display.newText("Foundation Building", 250, 730 , native.systemFont , 40 )
	foundationBuildingText:setFillColor( 0, 0, 0 )

	--Character--
	local student = display.newImageRect("student.png", 150, 150)
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

	--Trees--
	local tree = display.newImageRect("tree.png", 400, 300)
	tree.x = 1550
	tree.y = 850

	local tree = display.newImageRect("tree.png", 450, 300)
	tree.x = 700
	tree.y = 150

	local tree = display.newImageRect("tree.png", 270, 250)
	tree.x = 200
	tree.y = 500	

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

	function endGame()
		if(stats.sleep <= 0 or stats.hygiene <= 0 or stats.hunger <= 0 or stats.happiness <=0 or stats.intel <= 0) then
			background = display.newImageRect("background.png", 1920,1080)
			background.x = display.contentCenterX
			background.y = display.contentCenterY
		end
	end

Runtime:addEventListener("touch", endGame)

end

--Run the game--
main()
