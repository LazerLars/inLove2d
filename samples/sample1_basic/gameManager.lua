-- gameManager.lua

local player = require "player"
local enemy = require "enemy"
local weapon = require "weapon"

local gameManager = {
    score = 0
}

function gameManager.load()
    player.load()
    enemy.load()
    weapon.load()
    -- Additional game manager initialization if needed
end

function gameManager.update(dt)
    player.update(dt)
    enemy.update(dt)
    weapon.update(dt)
    -- Additional game manager update logic if needed
end

function gameManager.draw()
    player.draw()
    enemy.draw()
    weapon.draw()
    -- Additional game manager drawing logic if needed
end

function gameManager.incrementScore()
    gameManager.score = gameManager.score + 1
    print("Score: " .. gameManager.score)
end

return gameManager
