-----------------------------------------------------------------------------------------
--
-- Main.Lua
--
-- Program determines 
--
-- made by Davin Rousseau
--Made on Apr.4th/2019
-----------------------------------------------------------------------------------------
display.setDefault("background", 0, 2, 1)

local calculatebutton = display.newImageRect( "assets/calculate.png", 100, 100 )
calculatebutton.x = 150
calculatebutton.y = 250
calculatebutton.id = "calculate button"

local ageTextField = native.newTextField( display.contentCenterX, display.contentCenterY - 180, 100, 70 )
ageTextField.id = "age textField"

local ageText = display.newText( "Age:", 80, 70, native.systemFont, 18 )
ageText:setFillColor( 1, 0, 0 )

local dayweekTextField = native.newTextField( display.contentCenterX, display.contentCenterY- 110, 100, 70 )
dayweekTextField.id = "day of the week textField"

local dayweekText =  display.newText( "Day::", 80, 130, native.systemFont, 18 )
dayweekText:setFillColor( 1, 0, 0 )


print( "Write in your age and day of the week!: " )

function ratedTouch(event)

		local numberage=tonumber(ageTextField.text)
		local dayoweek= dayweekTextField.text
	
	if (dayoweek=="Sat" or dayoweek=="Sun") and (numberage >=17 and numberage <=21) then
	    print( "You get a student discount!" )
	    local discount =  display.newText( "You get a student discount!", display.contentCenterX, display.contentCenterY + 150, native.systemFont, 18 )
	    discount: setFillColor  (1,0,0)
	else 
		print("You must pay regular price!" .. tostring(numberage) )
		local regular = display.newText( "You must pay regular price!", display.contentCenterX, display.contentCenterY + 150, native.systemFont, 18 )
	    regular: setFillColor (1,0,0)
	end
	print("come again another time!")
end

print( "Program done." )

calculatebutton:addEventListener( 'touch', ratedTouch)