## On water math


execute if score @s speed matches 1.. run scoreboard players operation @s speed -= @s hoverboard.on_water

execute if score @s speed matches ..-1 run scoreboard players operation @s speed += @s hoverboard.on_water


scoreboard players set #negative_on_water hoverboard.on_water 0
scoreboard players operation #negative_on_water hoverboard.on_water -= @s hoverboard.on_water
execute if score @s speed < @s hoverboard.on_water if score @s speed > #negative_on_water hoverboard.on_water run scoreboard players set @s speed 0