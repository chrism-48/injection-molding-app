--scene1a--

local composer = require ("composer")
local scene = composer.newScene()
local native = require("native")

local function changeScenenext()
  --composer.removeScene()
  
  composer.gotoScene( "scene2",{effect = "slideDown", time = 1000} )
  
end

--[[



local function changeScene()
  --composer.removeScene()
  
  composer.gotoScene( "scene3",{effect = "fromLeft", time = 1000} )
  
end

local function changeScene4()
  --composer.removeScene()
  
  composer.gotoScene( "scene4",{effect = "fromRight", time = 1000} )
  
end


local function changeScene5()
  --composer.removeScene()
  
  composer.gotoScene( "scene5",{effect = "fromTop", time = 1000} )
  
end

local function changeScene6()
  --composer.removeScene()
  
  composer.gotoScene( "scene6",{effect = "fromBottom", time = 1000} )
  
end

local function changeScene7()
  --composer.removeScene()
  
  composer.gotoScene( "scene7",{effect = "fromRight", time = 1000} )
  
end

local function changeScene8()
  --composer.removeScene()
  
  composer.gotoScene( "scene8",{effect = "fromLeft", time = 1000} )
  
end

local function changeScene9()
  --composer.removeScene()
  
  composer.gotoScene( "scene9",{effect = "fromBottom", time = 1000} )
  
end

local function changeScene9b()
  --composer.removeScene()
  
  composer.gotoScene( "scene9b",{effect = "fromTop", time = 1000} )
  
end

local function changeScene9c()
  --composer.removeScene()
  
  composer.gotoScene( "scene9c",{effect = "fromLeft", time = 1000} )
  
end




local function exit_app()
  native.requestExit()
end

--]]



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
  
 
end
 
 
-- show()
function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase
 
    if ( phase == "will" ) then
        -- Code here runs when the scene is still off screen (but is about to come on screen)
 
    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
        
        
        local bg = display.newImage( "Images/bg9.png",_CW,260)
        sceneGroup:insert(bg)
        bg.alpha = 1 
        
        
        local stop_sign = display.newImage("Images/stop.png",145,60)
        sceneGroup:insert(stop_sign)
        stop_sign.alpha = 0 
        transition.to( stop_sign, { time=2000, alpha=1, onComplete=completeListener } )
        --transition.blink( stop_sign, { time=3000 } )
        
        local button_ss = display.newImage( "Images/7.png",_CX,467,190,30)
    button_ss.alpha = 0
    button_ss:addEventListener("tap", changeScenenext)
    sceneGroup:insert(button_ss)
    transition.to( button_ss, { time=2000, alpha=1, onComplete=completeListener } )
    
    local text_about = display.newText( "This app offers suggestions for some \nof the usual problems technicians run \ninto day to day.", _CX,200,               "Fonts/roboto/Roboto-Regular", 15 )
    text_about:setTextColor(1,1,1) 
    text_about.alpha = 0
    sceneGroup:insert(text_about)
    transition.to( text_about, { time=2000, alpha=1, onComplete=completeListener } )
    
    local text_name = display.newText( "Christopher L. Moore", 220,260,               "Fonts/paul_signature/Paul Signature", 20 )
    text_name:setTextColor(1,1,1) 
    text_name.alpha = 0
    sceneGroup:insert(text_name)
    transition.to( text_name, { time=2000, alpha=1, onComplete=completeListener } )
    
    
    
    
    
    

    
    local text_warn = display.newText( "Make sure all water,heat,\nand any auxillary equipment \nare correct BEFORE making \nchanges to process!", _CX,348,               "Fonts/roboto/Roboto-Regular", 24 )
    text_warn:setTextColor(1,0,0) 
    text_warn.alpha = 0
    sceneGroup:insert(text_warn)
    transition.to( text_warn, { time=2000, alpha=1, onComplete=completeListener } )
    
    
    
    
    
    
    local button_ss_text = display.newText( "Continue", _CX,469,               "Fonts/chapaza/Chapaza", 23 )
    button_ss_text:setTextColor(.3,1,.2) 
    button_ss_text.alpha = 0
    sceneGroup:insert(button_ss_text)
    transition.to( button_ss_text, { time=2000, alpha=1, onComplete=completeListener } )
    
    
          
        
        
 
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
