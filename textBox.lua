local function textDisplay (input)
	
	local textBackground = display.newImageRect( "textBackground.png", 360, 570 )
	textBackground.x = display.contentCenterX
	textBackground.y = display.contentCenterY

	local myText = display.newText( input, 100, 240, 300, native.systemFont, 16 )
	myText:setFillColor( 0, 0.5, 1 )
	text.x = display.contentCenterX
	text.y = display.contentCenterY

end