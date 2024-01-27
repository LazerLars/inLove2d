-- player.lua
local collision = require "collision"
local event = require "event"
local enemy = require "enemy"

local player = {
    counter = 0,
    timer = 0
}

function player.load()
    -- Player initialization logic
end

function player.update(dt)
    --secounds based incrementer
    player.timer = player.timer + dt

    if player.timer >= 1.0 then
        --event.publish("playerCollision")
        print('1 sec has passed...')
        player.timer = 0
    end
    --counter based
    player.counter = player.counter + 1

    if player.counter % 50 == 0 then
        event.publish('playerCollision')
    end

    
    -- Player update logic
    for _, e in ipairs(enemy.list) do
        if collision.check(player, e) then
            event.publish("playerCollision")
            -- Handle collision between player and enemy if needed
        end
    end
end

function player.draw()
    -- Player drawing logic
end

return player
