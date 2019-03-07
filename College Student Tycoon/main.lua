-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

local background = display.newImageRect( "Floor.png", 600, 350 )
background.x = display.contentCenterX
background.y = display.contentCenterY

local building = display.newImageRect( "building.png", 40, 40)
building.x = display.contentWidth0
building.y = display.contentHeight-40

local food = display.newImageRect( "food.png", 25, 20)
food.x = display.contentWidth-10
food.y = display.contentHeight-310

local SE = display.newImageRect( "SE.png", 25, 20)
SE.x = display.contentWidth-10
SE.y = display.contentHeight-290

local intel = display.newImageRect( "intel.png", 30, 20)
intel.x = display.contentWidth-8
intel.y = display.contentHeight-270

local hygiene = display.newImageRect( "hygiene.png", 30, 20)
hygiene.x = display.contentWidth-15
hygiene.y = display.contentHeight-250

local bed = display.newImageRect( "bed.png", 30, 20)
bed.x = display.contentWidth-15
bed.y = display.contentHeight-230

local club = display.newImageRect( "club.png", 50, 60)
club.x = display.contentWidth-200
club.y = display.contentHeight-280

local house = display.newImageRect( "house.png", 90, 80)
house.x = display.contentWidth-50
house.y = display.contentHeight-50

local libary = display.newImageRect( "libary.png", 90, 100)
libary.x = display.contentWidth-450
libary.y = display.contentHeight-270

local work = display.newImageRect( "work.png", 50, 50)
work.x = display.contentWidth-300
work.y = display.contentHeight-270

local ms = display.newImageRect( "ms.png", 70, 70)
ms.x = display.contentWidth-300
ms.y = display.contentHeight-40

local fb = display.newImageRect( "fb.png", 70, 70)
fb.x = display.contentWidth-200
fb.y = display.contentHeight-40

local fountain = display.newImageRect( "fountain.png", 70, 70)
fountain.x = display.contentWidth-250
fountain.y = display.contentHeight-150

local su = display.newImageRect( "su.png", 70, 50)
su.x = display.contentWidth-450
su.y = display.contentHeight-150

local Tree = display.newImageRect( "Tree.png", 70, 50)
Tree.x = display.contentWidth-350
Tree.y = display.contentHeight-200

local Tree = display.newImageRect( "Tree.png", 50, 30)
Tree.x = display.contentWidth-150
Tree.y = display.contentHeight-200
