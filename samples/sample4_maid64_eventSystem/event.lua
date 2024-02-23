-- event.lua

--usage
--require the file in the wanted file
--local event = require "event"

local event = {}

local listeners = {}

--listen to published events
--@usage: with agument
--      event.subscribe("increaseScore", function(score)
--          gameManager.incrementScore(score) -- call the function the class you listen to to the event, in this case our gameManager.lua file
--      end) --
--@usage without argument
--      event.subscribe("increaseScore", function()
--          gameManager.incrementScore() -- call the function the class you listen to to the event, in this case our gameManager.lua file
--      end) --
function event.subscribeEvent(eventName, listener)
    if not listeners[eventName] then
        listeners[eventName] = {}
    end
    table.insert(listeners[eventName], listener)
end

--Publish event which you can listen to
--could be you want to submit a score increase when enemy is dead
--@usage: event.publishEvent('increaseScore', 100) - publish event with a argument 
--@usage: event.publishEvent('increaseScore') - publish event without arguments
--
function event.publishEvent(eventName, ...)
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