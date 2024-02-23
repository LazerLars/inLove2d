-- gameManager.lua

local player = require "player"
local enemy = require "enemy"
local weapon = require "weapon"
local event = require "event"

local gameManager = {
    score = 0
}

function gameManager.load()
    print('gameManager started...')
    player.load()
    enemy.load()
    weapon.load()
    --subscribe to a event. this needs to be done in the load() function in order to work
    --it works even when its placed in the load(), if you move this to the etc. update() function 
    --is can be called 900-1000 times for each published event, which is not the intension..
    --so keep events subscribtion in the load function 
    event.subscribeEvent("increaseScore", function(score)
        gameManager.incrementScore(score)
        
    end)
    --or use this:
    -- event.subscribe("increaseScore", function()
    --     gameManager.incrementScore()
        
    -- end)
   
    -- Additional game manager initialization if needed
end

function gameManager.update(dt)
    player.update(dt)
    enemy.update(dt)
    weapon.update(dt)

      -- Game manager update logic
    
    -- Additional game manager update logic if needed
end

function gameManager.draw()
    player.draw()
    enemy.draw()
    weapon.draw()
    -- Additional game manager drawing logic if needed
end

function gameManager.spawnEnemy(x, y)
    enemy.create(x, y)
end

function gameManager.incrementScore(scoreIncrement)
    --if no scoreIncrement is added, then we just want to add 1
    if scoreIncrement == nill then
        gameManager.score = gameManager.score + 1
    else
        gameManager.score = gameManager.score + scoreIncrement
    end
end


return gameManager
