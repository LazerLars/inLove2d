-- class which different color palettes
--
--@usage
--at beginning of file were you want to use it
-- local colors = require "UtillityFunctions.colors"
--
--@usage in the love.draw() function
--colors.ColorPalette_pico8Micro('yellow') -- change text color to yellow
--love.graphics.print('my text', 50,20)
--colors.ColorPalette_pico8Micro('white') -- reset color to default text color

local colors = {}

-------------------------------------------
-------------------------------------------
--4 colors
-------------------------------------------
-------------------------------------------

--Prefined color palette 4 colors
--
--All colors: purple, blue, green, white
--
-- @usage ColorPalette_KirkokazeGameBoyPalette('blue') -- Sets the color to red.
--
-- https://lospec.com/palette-list/kirokaze-gameboy
function colors.ColorPalette_KirkokazeGameBoyPalette(color)

	local selectedColor = love.graphics.setColor(255/255, 0/255, 77/255)
	if color == 'purple' or color == 1 then
		love.graphics.setColor(255/255, 0/255, 77/255)   -- RGB for #332c50 / Purple
	elseif color == 'blue' or color == 2 then
		love.graphics.setColor(70/255, 135/255, 143/255)  -- RGB for #46878f / Blue
		
	elseif color == 'green' or color == 3 then
		love.graphics.setColor(148/255, 227/255, 68/255)  -- RGB for #94e344 / Green
		
	elseif color == 'white' or color == 4 then
		love.graphics.setColor(226/255, 243/255, 228/255) -- RGB for #e2f3e4 / dust white
		
	end
	return selectedColor
end

-------------------------------------------
-------------------------------------------
--8 colors
-------------------------------------------
-------------------------------------------

--Prefined color palette 8 colors
--
--All colors: pink, red, orange, yellow, grey, light-blue, medium-blue, sky-blue
--
-- @usage ColorPalette_sobeachy8('blue') -- Sets the color to red.
--
-- https://lospec.com/palette-list/sobeachy8
function colors.ColorPalette_sobeachy8(color)
	local selectedColor = love.graphics.setColor(229/255, 83/255, 136/255)

    if color == 'pink' or color == 1 then
        selectedColor = love.graphics.setColor(229/255, 83/255, 136/255) -- #e55388
    elseif color == 'red' or color == 2 then
        selectedColor = love.graphics.setColor(229/255, 125/255, 136/255) -- #e57d88
    elseif color == 'orange' or color == 3 then
        selectedColor = love.graphics.setColor(229/255, 159/255, 136/255) -- #e59f88
    elseif color == 'yellow' or color == 4 then
        selectedColor = love.graphics.setColor(229/255, 217/255, 136/255) -- #e5d988
    elseif color == 'grey' or color == 5 then
        selectedColor = love.graphics.setColor(227/255, 213/255, 204/255) -- #e3d5cc
    elseif color == 'light-blue' or color == 6 then
        selectedColor = love.graphics.setColor(186/255, 213/255, 204/255) -- #bad5cc
    elseif color == 'medium-blue' or color == 7 then
        selectedColor = love.graphics.setColor(109/255, 213/255, 204/255) -- #6dd5cc
    elseif color == 'sky-blue' or color == 8 then
        selectedColor = love.graphics.setColor(90/255, 197/255, 204/255)  -- #5ac5cc
    end
	return selectedColor
end


--Prefined color palette 8 colors
--
--All colors: yellow, red, pink, dark-purple, purple, blue, green, dust-white
--
-- @usage ColorPalette_fairyDust8('blue') -- Sets the color to red.
--
-- https://lospec.com/palette-list/fairydust-8
function colors.ColorPalette_fairyDust8(color)
	local selectedColor = love.graphics.setColor(240/255, 218/255, 177/255)
    if color == 'yellow' or color == 1 then
        selectedColor = love.graphics.setColor(240/255, 218/255, 177/255) -- #f0dab1
    elseif color == 'red' or color == 2 then
        selectedColor = love.graphics.setColor(227/255, 154/255, 172/255) -- #e39aac
    elseif color == 'pink' or color == 3 then
        selectedColor = love.graphics.setColor(196/255, 93/255, 159/255)  -- #c45d9f
    elseif color == 'dark-purple' or color == 4 then
        selectedColor = love.graphics.setColor(99/255, 75/255, 125/255)   -- #634b7d
    elseif color == 'purple' or color == 5 then
        selectedColor = love.graphics.setColor(100/255, 97/255, 194/255)  -- #6461c2
    elseif color == 'blue' or color == 6 then
        selectedColor = love.graphics.setColor(43/255, 169/255, 180/255)  -- #2ba9b4
    elseif color == 'green' or color == 7 then
        selectedColor = love.graphics.setColor(147/255, 212/255, 181/255) -- #93d4b5
    elseif color == 'dust-white' or color == 8 then
        selectedColor = love.graphics.setColor(240/255, 246/255, 232/255) -- #f0f6e8
    end
	return selectedColor
end


--Prefined color palette 8 colors
--
--All colors: dark-blue, purple, blue, green, orange, pink, yellow, white
--
-- @usage ColorPalette_sobeachy8('blue') -- Sets the color to red.
--
-- https://lospec.com/palette-list/clement-8
function colors.ColorPalette_clement8(color)
	local selectedColor = love.graphics.setColor(0, 8/255, 113/255)   
    if color == 'dark-blue' or color == 1 then
        selectedColor = love.graphics.setColor(0, 8/255, 113/255)        -- #000871
    elseif color == 'purple' or color == 2 then
        selectedColor = love.graphics.setColor(136/255, 84/255, 243/255)  -- #8854f3
    elseif color == 'blue' or color == 3 then
        selectedColor = love.graphics.setColor(99/255, 155/255, 255/255)  -- #639bff
    elseif color == 'green' or color == 4 then
        selectedColor = love.graphics.setColor(99/255, 255/255, 186/255)  -- #63ffba
    elseif color == 'orange' or color == 5 then
        selectedColor = love.graphics.setColor(255/255, 140/255, 92/255)   -- #ff8c5c
    elseif color == 'pink' or color == 6 then
        selectedColor = love.graphics.setColor(255/255, 121/255, 174/255)  -- #ff79ae
    elseif color == 'yellow' or color == 7 then
        selectedColor = love.graphics.setColor(255/255, 249/255, 130/255)  -- #fff982
    elseif color == 'white' or color == 8 then
        selectedColor = love.graphics.setColor(1/255, 1/255, 1/255)                 -- #ffffff
    end
	return selectedColor
end

--Prefined color palette 8 colors
--
--All colors: black, grey, blue, green, white, yellow, pink, brow
--
-- @usage ColorPalette_pico8Micro('blue') -- Sets the color to red.
--
--https://lospec.com/palette-list/pico-micro  
function colors.ColorPalette_pico8Micro(color)
	local selectedColor = love.graphics.setColor(77/255, 142/255, 217/255) 
    if color == 'black' or color == 1 then
        selectedColor = love.graphics.setColor(0, 0, 0)             -- #000000
    elseif color == 'grey' or color == 2 then
        selectedColor = love.graphics.setColor(84/255, 78/255, 94/255)   -- #544e5e
    elseif color == 'blue' or color == 3 then
        selectedColor = love.graphics.setColor(77/255, 142/255, 217/255)  -- #4d8ed9
    elseif color == 'green' or color == 4 then
        selectedColor = love.graphics.setColor(0, 212/255, 59/255)        -- #00d43b
    elseif color == 'white' or color == 5 then
        selectedColor = love.graphics.setColor(1, 1, 1)                 -- #ffe4d2
    elseif color == 'yellow' or color == 6 then
        selectedColor = love.graphics.setColor(1, 187/255, 13/255)       -- #ffbb0d
    elseif color == 'pink' or color == 7 then
        selectedColor = love.graphics.setColor(1, 59/255, 122/255)       -- #ff3b7a
    elseif color == 'brown' or color == 8 then
        selectedColor = love.graphics.setColor(145/255, 63/255, 51/255)  -- #913f33
    end
	return selectedColor
end

--Prefined color palette 8 colors
--
--All colors: pink, red, purple, dark-blue, white, yellow, blue, green
--
-- @usage ColorPalette_sobeachy8('blue') -- Sets the color to red.
--
-- https://lospec.com/palette-list/expandeddreamland
function colors.ColorPalette_expandeddreamland(color)
	local selectedColor = love.graphics.setColor(247/255, 190/255, 247/255) 
    if color == 'pink' or color == 1 then
        selectedColor = love.graphics.setColor(247/255, 190/255, 247/255)  -- #f7bef7
    elseif color == 'red' or color == 2 then
        selectedColor = love.graphics.setColor(231/255, 134/255, 134/255)  -- #e78686
    elseif color == 'purple' or color == 3 then
        selectedColor = love.graphics.setColor(119/255, 51/255, 231/255)   -- #7733e7
    elseif color == 'dark-blue' or color == 4 then
        selectedColor = love.graphics.setColor(44/255, 44/255, 150/255)    -- #2c2c96
    elseif color == 'white' or color == 5 then
        selectedColor = love.graphics.setColor(1, 1, 1)                   -- #fdfdfd
    elseif color == 'yellow' or color == 6 then
        selectedColor = love.graphics.setColor(238/255, 225/255, 159/255)  -- #eee19f
    elseif color == 'blue' or color == 7 then
        selectedColor = love.graphics.setColor(142/255, 222/255, 255/255)  -- #8edeff
    elseif color == 'green' or color == 8 then
        selectedColor = love.graphics.setColor(134/255, 211/255, 120/255)  -- #86d378
    end
	return selectedColor
end

-------------------------------------------
-- 16 colors
-------------------------------------------

-- Sets the Pico-8 color based on the specified color name.
--
--All colors: black, dark_blue, dark_purple, dark_green, brown, dark_grey, light_grey, white, red, orange, yellow, green, blue, lavender, pink, light_peach
--
-- @usage ColorPalette_Pico8('red') -- Sets the color to red.
--
--https://lospec.com/palette-list/pico-8
function colors.ColorPalette_Pico8(color)
	local selectedColor = love.graphics.setColor(0/255, 0/255, 0/255)
	if color == 'black' or color == 1 then
		selectedColor = love.graphics.setColor(255/255, 0/255, 77/255)
	elseif color == 'dark-blue' or color == 2 then
		selectedColor = love.graphics.setColor(29/255, 43/255, 83/255	)
	elseif color == 'dark-purple' or color == 3 then
		selectedColor = love.graphics.setColor(126/255, 37/255, 83/255)
	elseif color == 'dark-green' or color == 4 then
		selectedColor = love.graphics.setColor(0/255, 135/255, 81/255)
	elseif color == 'brown' or color == 5 then
		selectedColor = love.graphics.setColor(171/255, 82/255, 54/255)
	elseif color == 'dark-grey' or color == 6 then
		selectedColor = love.graphics.setColor(95/255, 87/255, 79/255)
	elseif color == 'light-grey' or color == 7 then
		selectedColor = love.graphics.setColor(194/255, 195/255, 199/255)
	elseif color == 'white' or color == 8 then
		selectedColor = love.graphics.setColor(255/255, 241/255, 232/255)
	elseif color == 'red' or color == 9 then
		selectedColor = love.graphics.setColor(255/255, 0/255, 77/255)
	elseif color == 'orange' or color == 10 then
		selectedColor = love.graphics.setColor(255/255, 163/255, 0/255)
	elseif color == 'yellow' or color == 11 then
		selectedColor = love.graphics.setColor(255/255, 236/255, 39/255)
	elseif color == 'green' or color == 12 then
		selectedColor = love.graphics.setColor(0/255, 228/255, 54/255)
	elseif color == 'blue' or color == 13 then
		selectedColor = love.graphics.setColor(241/255, 173/255, 255/255)
	elseif color == 'lavender' or color == 14 then
		selectedColor = love.graphics.setColor(131/255, 118/255, 156/255)
	elseif color == 'pink' or color == 15 then
		selectedColor = love.graphics.setColor(255/255, 119/255, 168/255)
	elseif color == 'light-peach' or color == 16 then
		selectedColor = love.graphics.setColor(255/255, 204/255, 170/255)
	end
	return selectedColor
end


return colors


--colors.ColorPalette_Pico8(1)

--colors.ColorPalette_KirkokazeGameBoyPalette(2)

--Palettes not added yet
