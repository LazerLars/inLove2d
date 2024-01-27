-- collision.lua

local collision = {}

function collision.check(player, enemy)
    -- Collision detection logic
    -- For example, check if the player's bounding box intersects with the enemy's bounding box
    return checkBoundingBoxCollision(player, enemy)
end

function checkBoundingBoxCollision(obj1, obj2)
    -- Bounding box collision logic
end

return collision
