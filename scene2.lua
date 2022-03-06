--scene2--

local composer = require ("composer")
local scene = composer.newScene()
local native = require("native")

local function changeScene()
  --composer.removeScene()
  
  composer.gotoScene( "scene3",{effect = "fromTop", time = 1000} )
  
end

local function changeScene4()
  --composer.removeScene()
  
  composer.gotoScene( "scene4",{effect = "fromTop", time = 1000} )
  
end


local function changeScene5()
  --composer.removeScene()
  
  composer.gotoScene( "scene5",{effect = "fromTop", time = 1000} )
  
end

local function changeScene6()
  --composer.removeScene()
  
  composer.gotoScene( "scene6",{effect = "fromTop", time = 1000} )
  
end

local function changeScene7()
  --composer.removeScene()
  
  composer.gotoScene( "scene7",{effect = "fromTop", time = 1000} )
  
end

local function changeScene8()
  --composer.removeScene()
  
  composer.gotoScene( "scene8",{effect = "fromTop", time = 1000} )
  
end

local function changeScene9()
  --composer.removeScene()
  
  composer.gotoScene( "scene9",{effect = "fromTop", time = 1000} )
  
end

local function changeScene9b()
  --composer.removeScene()
  
  composer.gotoScene( "scene9b",{effect = "fromTop", time = 1000} )
  
end

local function changeScene9c()
  --composer.removeScene()
  
  composer.gotoScene( "scene9c",{effect = "fromTop", time = 1000} )
  
end




local function exit_app()
  native.requestExit()
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
    
    
    local button1 = display.newImage( "Images/7.png",_CX,0,190,30)
    button1.alpha = 0.8 
    button1:addEventListener("tap", changeScene)
    sceneGroup:insert(button1)
    
    
  
    local button2 = display.newImage( "Images/7.png",_CX,50,190,30)
    button2.alpha = 0.8 
    button2:addEventListener("tap", changeScene4)
    sceneGroup:insert(button2)
    
    local button3 = display.newImage( "Images/7.png",_CX,100,190,30)
    button3.alpha = 0.8 
    button3:addEventListener("tap", changeScene5)
    sceneGroup:insert(button3)
    
    local button4 = display.newImage( "Images/7.png",_CX,150,190,30)
    button4.alpha = 0.8 
    button4:addEventListener("tap", changeScene6)
    sceneGroup:insert(button4)
    
    local button5 = display.newImage( "Images/7.png",_CX,200,190,30)
    button5.alpha = 0.8 
    button5:addEventListener("tap", changeScene7)
    sceneGroup:insert(button5)
    
    local button6 = display.newImage( "Images/7.png",_CX,250,190,30)
    button6.alpha = 0.8 
    button6:addEventListener("tap", changeScene8)
    sceneGroup:insert(button6)
    
    
    local button7 = display.newImage( "Images/7.png",_CX,300,190,30)
    button7.alpha = 0.8 
    button7:addEventListener("tap", changeScene9)
    sceneGroup:insert(button7)
    
    local button8 = display.newImage( "Images/7.png",_CX,350,190,30)
    button8.alpha = 0.8 
    button8:addEventListener("tap", changeScene9b)
    sceneGroup:insert(button8)
    
    
    local button9 = display.newImage( "Images/7.png",_CX,400,190,30)
    button9.alpha = 0.8 
    button9:addEventListener("tap", changeScene9c)
    sceneGroup:insert(button9)
    
    local button_quit = display.newImage( "Images/7.png",_CX,490,190,30)
    button_quit.alpha = 0.8 
    button_quit:addEventListener("tap", exit_app)
    sceneGroup:insert(button_quit)    
    
    
    local button_quit_text = display.newText( "Exit App", _CX,493,               "Fonts/chapaza/Chapaza", 23 )
    button_quit_text:setTextColor(1,0,0)
    
    sceneGroup:insert(button_quit_text)
    
    
    
    
    
    
    
    
    
   
   
   
   
   
   
   
   
   
   
   
   
    local button_text1 = display.newText( "Short", _CX,3,               "Fonts/chapaza/Chapaza", 23 )
    button_text1:setTextColor(.3,1,.2)
    sceneGroup:insert(button_text1)
   
   
    local button_text2 = display.newText( "Flash", _CX,53,               "Fonts/chapaza/Chapaza", 23 )
    button_text2:setTextColor(.3,1,.2)
    sceneGroup:insert(button_text2)
   
    
    local button_text3 = display.newText( "Splay", _CX,103,               "Fonts/chapaza/Chapaza", 23 )
    button_text3:setTextColor(.3,1,.2)
    sceneGroup:insert(button_text3)
   
    
    local button_text4 = display.newText( "Burn", _CX,153,               "Fonts/chapaza/Chapaza", 23 )
    button_text4:setTextColor(.3,1,.2)
    sceneGroup:insert(button_text4)
   
   
    local button_text5 = display.newText( "Sink", _CX,203,               "Fonts/chapaza/Chapaza", 23 )
    button_text5:setTextColor(.3,1,.2)
    sceneGroup:insert(button_text5)
   
    
    local button_text6 = display.newText( "Pinpush", _CX,253,               "Fonts/chapaza/Chapaza", 23 )
    button_text6:setTextColor(.3,1,.2) 
    sceneGroup:insert(button_text6)
    
    
    local button_text7 = display.newText( "Warp", _CX,303,               "Fonts/chapaza/Chapaza", 23 )
    button_text7:setTextColor(.3,1,.2) 
    sceneGroup:insert(button_text7)
    
    local button_text8 = display.newText( "Swirls", _CX,353,               "Fonts/chapaza/Chapaza", 23 )
    button_text8:setTextColor(.3,1,.2) 
    sceneGroup:insert(button_text8)
    
    local button_text9 = display.newText( "Readthrough", _CX,403,               "Fonts/chapaza/Chapaza", 23 )
    button_text9:setTextColor(.3,1,.2) 
    sceneGroup:insert(button_text9)
    
    
    
    
    
 
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
