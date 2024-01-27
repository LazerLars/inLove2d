-- event.lua

local event = {}

local listeners = {}

function event.subscribe(eventName, listener)
    if not listeners[eventName] then
        listeners[eventName] = {}
    end
    table.insert(listeners[eventName], listener)
end

function event.publish(eventName, ...)
    if listeners[eventName] then
        for _, listener in ipairs(listeners[eventName]) do
            listener(...)
        end
    end
end

return event


--player.lua
--event.publish("playerCollision")

 -- Game manager update logic
--  event.subscribe("playerCollision", function()
--     gameManager.incrementScore()
-- end)