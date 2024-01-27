-- enemy.lua

local enemy = {}

function enemy.load()
    -- Enemy initialization logic
    enemy.list = {}  -- List to store enemies
end

function enemy.create(x, y)
    local newEnemy = {
        x = x,
        y = y,
        -- Additional enemy properties and initialization
    }
    table.insert(enemy.list, newEnemy)
    return newEnemy
end

function enemy.update(dt)
    for _, e in ipairs(enemy.list) do
        -- Enemy update logic
    end
end

function enemy.draw()
    for _, e in ipairs(enemy.list) do
        -- Enemy drawing logic
    end
end

return enemy
