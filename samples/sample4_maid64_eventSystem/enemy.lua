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
        --sprite = love.graphics.newImage('spriteFolder/enemyFolder/yourSprite.png'),
        -- Additional enemy properties and initialization
    }
    table.insert(enemy.list, newEnemy)
    return newEnemy
end

function enemy.remove(index)
    table.remove(enemy.list, index)
end

function enemy.removeEnemyOutOfScreenOnXaxis(enemy, enemyIndex)
    -- Remove enemy if out of bounds
    --we only look at the x axis since we want to allow dove to go out of y and come backinto the screen
    if enemy.x < 0 or enemy.x > screenWidth then
       --table.remove(enemy.list, index)
       enemy.remove(enemyIndex)
       print('Removing enemy. exited screen. enemyIndex: ' .. enemyIndex)
   end
end

function enemy.moveEnemy(dt, static)
    for enemyIndex, enemy in ipairs(enemy.list) do
        local fallSpeed = 50
        local moveSpeed = 100
        if static == true then
            fallSpeed = 0
            moveSpeed = 0
        end
        -- Update enemy logic
        enemy.x = enemy.x + moveSpeed * dt
        enemy.y = enemy.y + fallSpeed * dt

       enemy.removeDovesOutOfScreenOnXaxis(enemy, enemyIndex)
    end
end

function enemy.update(dt)
    for _, e in ipairs(enemy.list) do
        -- Enemy update logic
    end
end

function enemy.draw()
    for enemyIndex, enemy in ipairs(enemy.list) do
        -- Enemy drawing logic
        --love.graphics.draw(enemy.sprite, enemy.x, enemy.y)
    end
end




return enemy
