if arg[2] == "debug" then
    require("lldebugger").start()
end

    -- recommended screen sizes
---+--------------+-------------+------+-----+-----+-----+-----+-----+-----+-----+
-- | scale factor | desktop res | 1    | 2   | 3   | 4   | 5   | 6   | 8   | 10  |
-- +--------------+-------------+------+-----+-----+-----+-----+-----+-----+-----+
-- | width        | 1920        | 1920 | 960 | 640 | 480 | 384 | 320 | 240 | 192 |
-- | height       | 1080        | 1080 | 540 | 360 | 270 | 216 | 180 | 135 | 108 |
-- +--------------+-------------+------+-----+-----+-----+-----+-----+-----+-----+
local settings = {
    fullscreen = false,
    screenScaler = 2,
    logicalWidth = 640,
    logicalHeight = 360
}
-- global mouse variables to hold correct mouse pos in the scaled world 
mouse_x, mouse_y = ...

function love.load()
    love.window.setTitle( 'inLove2D' )
    -- Set up the window with resizable option
    love.window.setMode(settings.logicalWidth, settings.logicalHeight, {resizable=true, vsync=0, minwidth=settings.logicalWidth*settings.screenScaler, minheight=settings.logicalHeight*settings.screenScaler})
    -- font = love.graphics.newFont('fonts/m6x11.ttf', 16)
    -- font = love.graphics.newFont('fonts/PressStart2P-Regular.ttf', 16)
    -- https://ggbot.itch.io/pixeloid-font
    -- pixeloid sizes: 9, 18, 36, 72, 144
    font = love.graphics.newFont('fonts/PixeloidMono.ttf', 9)
    
    
    love.graphics.setFont(font)
    -- love.graphics.setDefaultFilter("nearest", "nearest")

    circle = {}
    circle.x = settings.logicalWidth / 2
    circle.y = settings.logicalHeight / 2
    circle.radius = 25
    circle.speed = 200
end


function love.update(dt)
    -- Get the current window size
    calculateMouseOffsets()
end


function love.draw()
    love.graphics.push()
    love.graphics.translate(offsetX, offsetY)
    love.graphics.scale(scale, scale)

    -- game draw logic here
    -- print mouse cordinates
    love.graphics.setColor(1, 1, 1)
    love.graphics.print("mouse: " .. mouse_x .. "," .. mouse_y, 1, 1)
    font = love.graphics.newFont('fonts/PixeloidMono.ttf', 18)
    love.graphics.setFont(font)
    love.graphics.print("mouse: " .. mouse_x .. "," .. mouse_y, 1, 20)
    font = love.graphics.newFont('fonts/PixeloidMono.ttf', 9)
    love.graphics.setFont(font)

    sampleDrawCode()
    love.graphics.pop()
end

-- adjust mouse cordinates to match the scaling done in the game
function calculateMouseOffsets()
    -- Get the current window size
    local windowWidth, windowHeight = love.graphics.getDimensions()

    -- Calculate the current scaling factor
    scaleX = windowWidth / settings.logicalWidth
    scaleY = windowHeight / settings.logicalHeight
    scale = math.min(scaleX, scaleY)

    -- Calculate the offsets to center the game
    offsetX = (windowWidth - settings.logicalWidth * scale) / 2
    offsetY = (windowHeight - settings.logicalHeight * scale) / 2

    -- Adjust mouse coordinates
    mouse_x, mouse_y = love.mouse.getPosition()
    mouse_x = (mouse_x - offsetX) / scale
    mouse_y = (mouse_y - offsetY) / scale
    mouse_x = math.floor(mouse_x)
    mouse_y = math.floor(mouse_y)
end

function love.keypressed(key)
    -- toggle fullscreen
    if key == 'f11' then
        if settings.fullscreen == false then
            love.window.setFullscreen(true, "desktop")
            settings.fullscreen = true
        else
            love.window.setMode(settings.logicalWidth, settings.logicalHeight, {resizable=true, vsync=0, minwidth=settings.logicalWidth*settings.screenScaler, minheight=settings.logicalHeight*settings.screenScaler})
            settings.fullscreen = false
        end 
    end
end

function sampleDrawCode()
    -- Draw the game elements
    love.graphics.setColor(1, 1, 1)
    love.graphics.circle("fill", circle.x, circle.y, circle.radius)
    love.graphics.setColor(0.2, 0.8, 0.2)
    

    -- Draw vertical line
    love.graphics.line(circle.x, circle.y, mouse_x, circle.y)
    -- Draw horizontal line
    love.graphics.line(circle.x, circle.y, circle.x, mouse_y)
    -- Draw kune tiwards the mouse
    love.graphics.line(circle.x, circle.y, mouse_x, mouse_y)

    love.graphics.rectangle('line', settings.logicalWidth/2, settings.logicalHeight/2, 16,16)
end

