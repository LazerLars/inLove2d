if arg[2] == "debug" then
    require("lldebugger").start()
end

function love.load()
    -- Logical screen dimensions
    logicalWidth, logicalHeight = 384, 256
    screenScaler = 3

    -- Set up the window with resizable option
    love.window.setMode(logicalWidth, logicalHeight, {resizable=true, vsync=0, minwidth=logicalWidth*screenScaler, minheight=logicalHeight*screenScaler})
    font = love.graphics.newFont('fonts/m6x11.ttf', 16)
    
    love.graphics.setFont(font)
    -- love.graphics.setDefaultFilter("nearest", "nearest")

    circle = {}
    circle.x = 100
    circle.y = 100
    circle.radius = 25
    circle.speed = 200
end


function love.update(dt)
    -- Get the current window size
    windowWidth, windowHeight = love.graphics.getDimensions()

    -- Calculate the scaling factor
    scaleX = windowWidth / logicalWidth
    scaleY = windowHeight / logicalHeight
    scale = math.min(scaleX, scaleY)

    -- Calculate the offsets to center the game
    offsetX = (windowWidth - logicalWidth * scale) / 2
    offsetY = (windowHeight - logicalHeight * scale) / 2

    -- Adjust mouse coordinates
    mouse_x, mouse_y = love.mouse.getPosition()
    mouse_x = (mouse_x - offsetX) / scale
    mouse_y = (mouse_y - offsetY) / scale
    mouse_x = math.floor(mouse_x)
    mouse_y = math.floor(mouse_y)
    angle = math.atan2(mouse_y - circle.y, mouse_x - circle.x)
end


function love.draw()
    -- Get the current window size
    windowWidth, windowHeight = love.graphics.getDimensions()

    -- Calculate the scaling factor
    scaleX = windowWidth / logicalWidth
    scaleY = windowHeight / logicalHeight
    scale = math.min(scaleX, scaleY)

    -- Calculate the offsets to center the game
    offsetX = (windowWidth - logicalWidth * scale) / 2
    offsetY = (windowHeight - logicalHeight * scale) / 2

    -- Apply scaling and translation
    love.graphics.push()
    love.graphics.translate(offsetX, offsetY)
    love.graphics.scale(scale, scale)

    -- Draw the game elements
    love.graphics.setColor(1, 1, 1)
    love.graphics.circle("fill", circle.x, circle.y, circle.radius)
    love.graphics.setColor(0.2, 0.8, 0.2)
    love.graphics.print("angle: " .. angle, 1, 1)
    love.graphics.print("mouse: " .. mouse_x .. "," .. mouse_y, 1, 16)

    -- Draw vertical line
    love.graphics.line(circle.x, circle.y, mouse_x, circle.y)
    -- Draw horizontal line
    love.graphics.line(circle.x, circle.y, circle.x, mouse_y)
    -- Draw kune tiwards the mouse
    love.graphics.line(circle.x, circle.y, mouse_x, mouse_y)

    love.graphics.pop()
end
