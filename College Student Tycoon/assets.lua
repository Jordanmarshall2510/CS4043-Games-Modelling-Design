--assets 

local assets = { } 

function assets.display()
	
	grass = display.newImageRect( "grass.png", 2000, 1200);
	grass.x = 960
	grass.y = 540
	grass:toBack()

end 

function assets.text() 
	houseText = display.newText("House", 290, 100, native.systemFont, 40)
	houseText:setFillColor(0, 0, 0)

	libraryText = display.newText("Library", 1200, 50, native.systemFont, 40)
	libraryText:setFillColor(0, 0, 0)

	barText = display.newText("The Horse Club", 1680, 400, native.systemFont, 40)
	barText:setFillColor(0, 0, 0)

	restaurantText = display.newText("Restaurant", 1550, 770, native.systemFont, 40)
	restaurantText:setFillColor(0, 0, 0)

	foundationBuildingText = display.newText("Foundation Building", 250, 730, native.systemFont, 40)
	foundationBuildingText:setFillColor(0, 0, 0)
end 

function assets.clear() 
	--putting all the objects into a display group caused unexpected issues with the game
	--thus, they have to be done individually 
	grass:removeSelf() 
	foundationBuilding:removeSelf() 
	restaurant:removeSelf() 
	house:removeSelf() 
	library:removeSelf() 
	bar:removeSelf() 
	tree1:removeSelf() 
	tree2:removeSelf() 
	tree3:removeSelf() 
	houseText:removeSelf()
	libraryText:removeSelf()
	barText:removeSelf()
	restaurantText:removeSelf()
	foundationBuildingText:removeSelf()
	exit:removeSelf()
end 

return assets 
