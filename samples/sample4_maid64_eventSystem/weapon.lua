-- weapon.lua

local weapon = {}

function weapon.addBullet()
    local spawnX, spawnY = math.random(10,50), math.random(10,50)
   
    local bullet = {
        x = spawnX,
        y = spawnY,
       
        speed = 800,
        w = 5, -- bullet sprite width
        h = 3 -- bullet sprite height

    }
    table.insert(weapon.bulletList, bullet)
    --print('adding bullet, new length: ' .. #bulletList)
end

function weapon.removeBullet(index)
    table.remove(weapon.bulletList, index)
end

function weapon.removeBulletOutOfScreen(bullet, bulletIndex)
    if bullet.x < 0 or bullet.x > sceenWidth or
           bullet.y < 0 or bullet.y > screenHeight then
            --table.remove(weapon.bulletList, index)
            weapon.removeBullet(bulletIndex)
            print('removing bullet, out of bounds. bulletIndex: ' .. bulletIndex)
        end
end

function weapon.moveBullet(dt)
    for bulletIndex, bullet in ipairs(weapon.bulletList) do
        bullet.x = bullet.x * bullet.speed * dt
        bullet.y = bullet.y * bullet.speed * dt

        weapon.removeBulletOutOfScreen(bullet, bulletIndex)
    end
end

function weapon.load()
    -- Weapon initialization logic
    weapon.bulletList = {}
    --spr_bullet = love.graphics.newImage('yourSpriteFolder/bulletsFolder/yourPulletImg.png')
end

function weapon.update(dt)
    -- Weapon update logic
    --weapon.moveBullet(dt)
end

function weapon.draw()
    -- Weapon drawing logic
    for bulletIndex, bullet in ipairs(weapon.bulletList) do
        --love.graphics.draw(spr_bullet,bullet.x, bullet.y)
    end
end

return weapon
