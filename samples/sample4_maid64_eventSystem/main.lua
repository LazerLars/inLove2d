if arg[2] == "debug" then
    require("lldebugger").start()
end
local maid64 = require "maid64"
local gameManager = require "gameManager"
-- recommended screen sizes
---+--------------+-------------+------+-----+-----+-----+-----+-----+-----+-----+
-- | scale factor | desktop res | 1    | 2   | 3   | 4   | 5   | 6   | 8   | 10  |
-- +--------------+-------------+------+-----+-----+-----+-----+-----+-----+-----+
-- | width        | 1920        | 1920 | 960 | 640 | 480 | 384 | 320 | 240 | 192 |
-- | height       | 1080        | 1080 | 540 | 360 | 270 | 216 | 180 | 135 | 108 |
-- +--------------+-------------+------+-----+-----+-----+-----+-----+-----+-----+

local settings = {
    fullscreen = false,
    scaleMuliplier = 3,
    sceenWidth = 320,
    screenHeight = 180
}

--everything revolving x = ... can be deleted. its just for test/sample purposes
function love.load()
    love.window.setTitle( 'inLove2D' )
    --optional settings for window
    love.window.setMode(settings.sceenWidth*settings.scaleMuliplier, settings.screenHeight*settings.scaleMuliplier, {resizable=true, vsync=false, minwidth=200, minheight=200})
    love.graphics.setDefaultFilter("nearest", "nearest")
    --initilizing maid64 for use and set to 64x64 mode 
    --can take 2 parameters x and y if needed for example maid64.setup(64,32)
    maid64.setup(settings.sceenWidth, settings.screenHeight)

    --font = love.graphics.newFont('fonts/pico-8-mono.ttf', 12)
    font = love.graphics.newFont('fonts/PressStart2P-Regular.ttf', 8)
    --font:setFilter('nearest', 'nearest')

    love.graphics.setFont(font)

    spr_inLove2d = maid64.newImage("inLove2d_64x64.png")

    rotate = 0
    gameManager.load()
   
end

function love.update(dt)
    rotate = rotate + dt
    --print('test' .. x)
    gameManager.update(dt)
end
function love.draw()
    
    maid64.start()--starts the maid64 process

    --draw images here
    
    --can also draw shapes and get mouse position
    love.graphics.circle("fill", maid64.mouse.getX(),  maid64.mouse.getY(), 2)
    --draw x,y cordinates on scren, nice for dev.
    love.graphics.print(maid64.mouse.getX() .. ',' ..  maid64.mouse.getY(), settings.sceenWidth-(8*7),1)
    gameManager.draw()

    love.graphics.draw(spr_inLove2d, settings.sceenWidth/2, settings.screenHeight/2, rotate, 3, 3, spr_inLove2d:getWidth()/2, spr_inLove2d:getHeight()/2)

    maid64.finish()--finishes the maid64 process
end

function love.resize(w, h)
    -- this is used to resize the screen correctly
    maid64.resize(w, h)
end

function love.keypressed(key)
   -- toggle fullscreen
    if key == 'f11' then
        if settings.fullscreen == false then
            love.window.setFullscreen(true, "desktop")
            settings.fullscreen = true
        else
            love.window.setMode(settings.sceenWidth*settings.scaleMuliplier, settings.screenHeight*settings.scaleMuliplier, {resizable=true, vsync=false, minwidth=200, minheight=200})
            maid64.setup(settings.sceenWidth, settings.screenHeight)
            settings.fullscreen = false
        end 
    end
end
