local gameManager = require "gameManager"

function love.load()
    love.window.setTitle( 'inLove2D' )
    gameManager.load()
end

function love.update(dt)
    gameManager.update(dt)
end

function love.draw()
    gameManager.draw()
end