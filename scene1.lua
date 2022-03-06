--scene1--

local composer = require ("composer")
local scene = composer.newScene()

local function changeScene()
  --composer.removeScene()
  
  composer.gotoScene( "scene1a",{effect = "slideRight", time = 1500} )
  
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
    
    
    
    local intro1 = display.newText( "Injection Molding", _CX,45,      "Fonts/simplicity2/simplicity", 40 )
    intro1:setTextColor(.3,1,.2)
    sceneGroup:insert(intro1)

    local intro3 = display.newText( "Suggestions", _CX,85,      "Fonts/simplicity2/simplicity", 40 )
    intro3:setTextColor(.3,1,.2)
    sceneGroup:insert(intro3)

    local mold_img = display.newImage( "Images/mold.png",160,270)
    mold_img.alpha = 1
    sceneGroup:insert(mold_img)----------------
    
    
    --[[
    local function listener( event )
      --print( "listener called" )
      local intro2 = display.newText( "By: Chris Moore", _CX,140, "Fonts/paul_signature/Paul Signature", 24) 
      intro2:setTextColor(.3,1,.3)
      sceneGroup:insert(intro2)
    end
  
    timer.performWithDelay( 4200, listener )
    --]]
    
  
    
    local button_off = display.newImage( "Images/7.png",_CX,465)
    button_off.alpha = 0.8 
    button_off:addEventListener("tap", changeScene)
    sceneGroup:insert(button_off)
    
    
    
    local button_text = display.newText( "Press to start", _CX,467, "Fonts/simplicity2/simplicity", 24 )
    button_text:setTextColor(.3,1,.2)
    --sceneGroup:insert(button_text)
    --button_text.addEventListener("tap", changeScene)
    sceneGroup:insert(button_text)
    
    
    
 
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









