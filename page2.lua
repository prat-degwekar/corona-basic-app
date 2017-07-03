local composer = require( "composer" )
 
local scene = composer.newScene()
 
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
 
 
 
 
-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------

local video

local function videoListenerEvent( event )

	print( "Event phase : "..event.phase )
	
	if event.errorCode then
        native.showAlert( "Error!", event.errorMessage, { "OK" } )
    end
	
end
 
-- create()
function scene:create( event )
 
    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen
	
	--[[video = native.newVideo(display.contentCenterX , display.contentCenterY , display.contentWidth , display.contentHeight)
	
	video:load( "http://www.coronalabs.com/video/bbb/BigBuckBunny_640x360.m4v" , media.RemoteSource )
	
	sceneGroup:insert( video )
	
	video:addEventListener( "video" , videoListenerEvent )
	
	video:play()--]]
	
	local function videoListener( event )
		print( "video session ended!")
	end
	
	media.playVideo( "http://www.coronalabs.com/video/bbb/BigBuckBunny_640x360.m4v" , media.RemoteSource , true , videoListener )
	
	--media.playVideo( "promo.mp4", system.ResourceDirectory, false, videoListener )

end
 
 
-- show()
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
 
    end
end
 
 
-- hide()
function scene:hide( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is on screen (but is about to go off screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs immediately after the scene goes entirely off screen
 
    end
end
 
 
-- destroy()
function scene:destroy( event )
 
    local sceneGroup = self.view
    -- Code here runs prior to the removal of scene's view
 
end
 
 
-- -----------------------------------------------------------------------------------
-- Scene event function listeners
-- -----------------------------------------------------------------------------------
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )
-- -----------------------------------------------------------------------------------
 
return scene