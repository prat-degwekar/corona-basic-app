-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Your code here

local widget = require "widget"
local composer = require "composer"

local myButtonEvent = function(event)
	print( "you tapped the "..(event.target.id).." button!" )
	myButton:removeSelf()
	--display.remove( myButton )
	myButton = nil
	composer.gotoScene( "page1" , {effect = "fade" , time = 500} )
end

--[[local myButton = widget.newButton{
	
	id = "mainMenuButton",
	
	onEvent = myButtonEvent
	
	}--]]
	
myButton = widget.newButton{

	id = "myTextButton",
	
	label = "My Button",
	
	left = 150,
	
	top = 150,
	
	emboss = true,
	
	strokeWidth = 4,
	
	cornerRadius = 8,
	
	onEvent = myButtonEvent
	
	}
	
myButton:addEventListener( "tap" , myButtonEvent)
	
--[[myButton = display.newRect( 100 , 100 , 200 , 50)
myButton:addEventListener( "tap" , myButtonEvent )--]]