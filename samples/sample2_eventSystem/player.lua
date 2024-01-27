-- player.lua
local collision = require "collision"
local event = require "event"
local enemy = require "enemy"

local player = {}

function player.load()
    -- Player initialization logic
end

function player.update(dt)
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
