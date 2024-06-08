local gameManager = require "gameManager"

function love.load()
    love.window.setTitle( 'inLove2D' )
    gameManager.load()
    love.graphics.setDefaultFilter("nearest", "nearest")
    rotate = 0
    spr_inLove2d = love.graphics.newImage("inLove2d_64x64.png")
    print(love.graphics.getWidth())
    print(love.graphics.getHeight())
end

function love.update(dt)
    gameManager.update(dt)
    rotate = rotate + dt
end

function love.draw()
    gameManager.draw()
    love.graphics.draw(spr_inLove2d, love.graphics.getWidth()/2, love.graphics.getHeight()/2, rotate, 10, 10, spr_inLove2d:getWidth()/2, spr_inLove2d:getHeight()/2)
end