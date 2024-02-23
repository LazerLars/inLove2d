-- collision.lua

local collision = {}

local weapon = require "weapon"
local enemy = require "enemy"
local event = require "event"


--sample function
--detect if a bullet hits a enemy
--remove the bullet
--remove the enemy
--increase score
--the functions needs to be called in the collision.update() in order to work
function collision.checkForCollisionBulletAndEnemy()

    --loop through all bullets and see if it hits a enemy
    for bulletIndex, bullet in ipairs(weapon.bulletList) do
        for enemyIndex, enemy in ipairs(enemy.list) do
             -- Check for collision based on x, y, width, and height
             if bullet.x < enemy.x + enemy.w and -- Right edge of bullet is to the left of the right edge of dove
             bullet.x + bullet.w > enemy.x and -- Left edge of bullet is to the right of the left edge of dove
             bullet.y < enemy.y + enemy.h and -- Bottom edge of bullet is above the top edge of dove
             bullet.y + bullet.h > enemy.y then -- Top edge of bullet is below the bottom edge of dove
              print('bulletIndex: ' .. bulletIndex .. 'collides with doveIndex: ' .. enemyIndex)
              enemy.remove(enemyIndex)
              weapon.removeBullet(bulletIndex)
              --increase score
              event.publish('increaseScore', 100)
            end
        end
    end
end

--standard function for checking collisions bewteen two objects
--it could be a bullet and a enemy etc.
--in practice it's showed in collision.checkForCollisionBulletAndEnemy()
function collision.checkForCollision(obj1List, obj2List)
    --obj1List = weapon.bulletList
    --obj2List = enemy.list

    for obj1Index, obj1 in ipairs(obj1List) do
        --print('bullet ' .. bulletIndex .. ' xy = ' .. bullet.x .. ',' .. bullet.y)
        for obj2Index, obj2 in ipairs(obj2List) do
            
             -- Check for collision based on x, y, width, and height
             if obj1.x < obj2.x + obj2.w and -- Right edge of bullet is to the left of the right edge of dove
             obj1.x + obj1.w > obj2.x and -- Left edge of bullet is to the right of the left edge of dove
             obj1.y < obj2.y + obj2.h and -- Bottom edge of bullet is above the top edge of dove
             obj1.y + obj1.h > obj2.y then -- Top edge of bullet is below the bottom edge of dove
              print('objIndex: ' .. obj1Index .. 'collides with obj2Index: ' .. obj2Index)
              --collision logic goes here
              --enemy.remove(obj2Index)
              --weapon.removeBullet(obj1Index)
              --event.publish('increaseScore', 100)
            end
        end
    end
end



function collision.update()
    --collision.checkForCollisionBulletAndEnemy()
    --collision.checkForCollision(bulletList, enemyList)
end

return collision
