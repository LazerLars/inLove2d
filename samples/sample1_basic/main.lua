local gameManager = require "gameManager"

function love.load()
    gameManager.load()
end

function love.update(dt)
    gameManager.update(dt)
end

function love.draw()
    gameManager.draw()
end