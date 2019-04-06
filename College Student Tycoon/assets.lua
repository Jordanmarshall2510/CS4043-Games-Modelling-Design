--assets 

local assets = { } 

function assets.display()
	
	grass = display.newImageRect( "grass.png", 2000, 1200);
	grass.x = 960
	grass.y = 540
	grass:toBack()
	
	foundationBuilding = display.newImageRect("foundationBuilding.png", 250, 250)
	foundationBuilding.x = 250
	foundationBuilding.y = 850
	foundationBuilding.name = "foundationBuilding"

	house = display.newImageRect( "house.png", 250, 250)
	house.x = 330
	house.y = 200
	house.name = "house"

	library = display.newImageRect( "library.png", 250, 250)
	library.x = 1200
	library.y = 200
	library.name = "library"

	bar = display.newImageRect( "bar.png", 250, 250)
	bar.x = 1700
	bar.y = 550
	bar.name = "bar"

	restaurant = display.newImageRect( "restaurant.png", 250, 250)
	restaurant.x = 960
	restaurant.y = 900
	restaurant.name = "restaurant" 
	
	--Trees--
	tree1 = display.newImageRect( "tree.png", 400, 300)
	tree1.x = 1550
	tree1.y = 850

	tree2 = display.newImageRect( "tree.png", 450, 300)
	tree2.x = 700
	tree2.y = 150

	tree3 = display.newImageRect( "tree.png", 270, 250)
	tree3.x = 200
	tree3.y = 500	

end 

function assets.text() 
	
	houseText = display.newText( "House", 290, 100 , native.systemFont , 40 )
	houseText:setFillColor( 0, 0, 0 )

	libraryText = display.newText( "Library", 1200, 50 , native.systemFont , 40 )
	libraryText:setFillColor( 0, 0, 0 )

	barText = display.newText( "The Horse Club", 1680, 400 , native.systemFont , 40 )
	barText:setFillColor( 0, 0, 0 )

	restaurantText = display.newText( "Restaurant", 960, 770 , native.systemFont , 40 )
	restaurantText:setFillColor( 0, 0, 0 )

	foundationBuildingText = display.newText( "Foundation Building", 250, 730 , native.systemFont , 40 )
	foundationBuildingText:setFillColor( 0, 0, 0 )
	
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
end 

return assets 