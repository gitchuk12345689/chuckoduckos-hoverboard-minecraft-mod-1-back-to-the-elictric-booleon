## equiping the boots
clear @s diamond_boots
give @s diamond_boots
scoreboard players reset @s shows

scoreboard players set #tp_distance var 5
execute positioned ^ ^ ^1 run function item:teleporting_boots/check

execute at @s run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 0.8 1

clear @s diamond_boots
give @s diamond_boots