if arg[2] == "debug" then
    require("lldebugger").start()
end
local maid64 = require "maid64"
local gameManager = require "gameManager"


function love.load()
    x = 0
    --optional settings for window
    love.window.setMode(800, 600, {resizable=true, vsync=false, minwidth=200, minheight=200})
    love.graphics.setDefaultFilter("nearest", "nearest")
    --initilizing maid64 for use and set to 64x64 mode 
    --can take 2 parameters x and y if needed for example maid64.setup(64,32)
    maid64.setup(320, 240)

    --font = love.graphics.newFont('fonts/pico-8-mono.ttf', 12)
    font = love.graphics.newFont('fonts/PressStart2P-Regular.ttf', 8)
    --font:setFilter('nearest', 'nearest')

    love.graphics.setFont(font)
    gameManager.load()
   
end

function love.update(dt)
    x = x + 1
    --print('test' .. x)
    gameManager.update(dt)
end
function love.draw()
    
    maid64.start()--starts the maid64 process

    --draw images here
    
    --can also draw shapes and get mouse position
    love.graphics.circle("fill", maid64.mouse.getX(),  maid64.mouse.getY(), 2)
    gameManager.draw()


    maid64.finish()--finishes the maid64 process
end

function love.resize(w, h)
    -- this is used to resize the screen correctly
    maid64.resize(w, h)
end
