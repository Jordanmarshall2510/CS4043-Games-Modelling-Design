--
-- For more information on config.lua see the Project Configuration Guide at:
-- https://docs.coronalabs.com/guide/basics/configSettings
--

application =
{
	content =
	{
		--[[ Set this to any widescreen resolution if you want our game 
		to be widescreen e.g. 1024x768, keep in mind that we need to be careful 
		with the res of the assets as well --]]
		width = 1024,
		height = 768, 
		scale = "letterbox",
		fps = 60,
		
		--[[
		imageSuffix =
		{
			    ["@2x"] = 2,
			    ["@4x"] = 4,
		},
		--]]
	},
}
