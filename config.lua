--
-- For more information on config.lua see the Project Configuration Guide at:
-- https://docs.coronalabs.com/guide/basics/configSettings
--

local aspectRatio = display.pixelHeight / display.pixelWidth

application =
{
	content =
	{
		width = aspectRatio > 1.5 and 320 or math.ceil( 480 / aspectRatio),
		height = aspectRatio < 1.5 and 480 or math.ceil( 320 * aspectRatio), 
		scale = "letterbox",
		fps = 60,
		
		imageSuffix =
		{
			    ["@2x"] = 1.5,
			    ["@4x"] = 3.0,
		},
	},
}

--calculate the aspect ratio of the device:
--[[local aspectRatio = display.pixelHeight / display.pixelWidth
 
application = {
   content = {
      width = aspectRatio > 1.5 and 320 or math.ceil( 480 / aspectRatio ),
      height = aspectRatio < 1.5 and 480 or math.ceil( 320 * aspectRatio ),
      scale = "letterBox",
      fps = 30,
 
      imageSuffix = {
         ["@2x"] = 1.5,
         ["@4x"] = 3.0,
      },
   },
}--]]