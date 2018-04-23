-----------------------------------------------------------------------------------------
--
-- main.Lua
--
-- moving guy
--
--
-- Created by: Fawaz Mezher
-- Created on: april 2018 
-----------------------------------------------------------------------------------------
local dPad = display.newImage( "./assets/sprites/d-pad.png" )

dPad.x = 150

dPad.y = display.contentHeight - 200

dPad.id = "d-pad"


local upArrow = display.newImage( "./assets/sprites/upArrow.png" )

upArrow.x = 150

upArrow.y = display.contentHeight - 310

upArrow.id = "up arrow"


local downArrow = display.newImage( "./assets/sprites/downArrow.png" )

downArrow.x = 150

downArrow.y = display.contentHeight - 90

downArrow.id = "down arrow"


local leftArrow = display.newImage( "./assets/sprites/leftArrow.png" )

leftArrow.x = 40

leftArrow.y = display.contentHeight - 200

leftArrow.id = "left arrow"


local theCharacter = display.newImage( "./assets/sprites/ninja.png" )

theCharacter.x = display.contentCenterX

theCharacter.y = display.contentCenterY

theCharacter.id = "the character"


local rightArrow = display.newImage( "./assets/sprites/rightArrow.png" )

rightArrow.x = 260

rightArrow.y = display.contentHeight - 200

rightArrow.id = "right arrow"

 

function upArrow:touch( event )

    if ( event.phase == "ended" ) then

         transition.moveBy( theCharacter, { 

        	x = 0, 

        	y = -50, 

        	time = 100

        	} )

    end


    return true

end


function downArrow:touch( event )

    if ( event.phase == "ended" ) then

         transition.moveBy( theCharacter, { 

        	x = 0, 

        	y = 50, 

        	time = 100 

        	} )

    end


    return true

end


function leftArrow:touch( event )

    if ( event.phase == "ended" ) then

         transition.moveBy( theCharacter, { 

        	x = -50 , 

        	y = 0, 

        	time = 100 

        	} )

    end


    return true

end


function rightArrow:touch( event )

    if ( event.phase == "ended" ) then

         transition.moveBy( theCharacter, { 

        	x = 50, 

        	y = 0, 

        	time = 100

        	} )

    end


    return true

end


upArrow:addEventListener( "touch", upArrow )

downArrow:addEventListener( "touch", downArrow )

leftArrow:addEventListener( "touch", leftArrow )

rightArrow:addEventListener( "touch", rightArrow )

