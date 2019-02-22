-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

local money = 0
local sleep = 100
local hygeine = 100 
local hunger = 100 
local selfEsteem = 100

local grass = display.newImageRect("grass.png", 1920, 1080)
grass.x = display.contentCenterX
grass.y = display.contentCenterY

local library = display.newImageRect("library.png", 74, 87)
library.x = -222
library.y = 412

local student = display.newImageRect( "student.png", 70, 70 )
student.x = display.contentCenterX
student.y = display.contentCenterY

local moneyText = display.newText("Money " .. money, 500, 20, native.systemFont , 20 )
moneyText:setFillColor( 1, 1, 1 )

local sleepText = display.newText("Sleep " .. sleep, 500, 40, native.systemFont , 20 )
sleepText:setFillColor( 1, 1, 1 )

local hygeineText = display.newText("Hygeine " .. hygeine, 500, 60, native.systemFont , 20 )
hygeineText:setFillColor( 1, 1, 1 )

local hungerText = display.newText("Hunger " .. hunger, 500, 80, native.systemFont , 20 )
hungerText:setFillColor( 1, 1, 1 )

local selfEsteemText = display.newText("Self Esteem " .. selfEsteem, 500, 100, native.systemFont , 20 )
moneyText:setFillColor( 1, 1, 1 )

-----Moves sprite to coords of touch-----
local function onTouch(event)
if(event.phase == "ended") then 
transition.to(student, {x=event.x, y=event.y})
print(event.x, event.y)
end
end
Runtime:addEventListener("touch", onTouch)