--scene3--


local composer = require( "composer" )
 
local scene = composer.newScene()

local function changeSceneback()
  --composer.removeScene()
  
  composer.gotoScene( "scene2",{effect = "fromLeft", time = 1000} )
  
end


 
-- -----------------------------------------------------------------------------------
-- Code outside of the scene event functions below will only be executed ONCE unless
-- the scene is removed entirely (not recycled) via "composer.removeScene()"
-- -----------------------------------------------------------------------------------
 
 
 
 
-- -----------------------------------------------------------------------------------
-- Scene event functions
-- -----------------------------------------------------------------------------------


-- CONSTANT VALUES --
_CX = display.contentCenterX
_CY = display.contentCenterY
_CW = display.contentWidth
_CH = display.contentHeight
_T = display.screenOriginY -- Top
_L = display.screenOriginX -- Left
_R = display.viewableContentWidth - _L -- Right
_B = display.viewableContentHeight - _T -- Bottom











 
-- create()
function scene:create( event )
 
    local sceneGroup = self.view
    -- Code here runs when the scene is first created but has not yet appeared on screen
    
    local bg = display.newImage( "Images/bg9.png",_CW,260)
    sceneGroup:insert(bg)
    bg.alpha = 1 
    
    
    local short = display.newImage("Images/sinks.png",160,50,50,50)
    sceneGroup:insert(short)
    short.alpha = 0 
    
    
    local img_text = display.newText( "Sink", _CX,165,               "Fonts/chapaza/Chapaza", 48 )
    img_text:setTextColor(.3,1,.2)
    img_text.alpha = 0
    sceneGroup:insert(img_text)
    
    transition.to( short, { time=1900, delay=300, alpha=1.0,} )
    transition.to( img_text, { time=1900, delay=300, alpha=1.0,} )
    
    
    
    
    
    
 
end
 
 
-- show()
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
        
        local button4 = display.newImage( "Images/7.png",_CX,490,         190,30)
        button4.alpha = 0
        button4:addEventListener("tap", changeSceneback)
        sceneGroup:insert(button4)
        transition.to( button4, { time=2000, alpha=1, onComplete=completeListener } )
        
        
        local button_text1 = display.newText( "Back", _CX,493,               "Fonts/chapaza/Chapaza", 23 )
        button_text1:setTextColor(.3,1,.2)
        button_text1.alpha = 0
        sceneGroup:insert(button_text1)
        transition.to( button_text1, { time=2000, alpha=1, onComplete=completeListener } )
 
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