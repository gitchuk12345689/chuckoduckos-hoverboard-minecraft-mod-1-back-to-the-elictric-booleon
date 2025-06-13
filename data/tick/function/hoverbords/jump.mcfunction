scoreboard players operation $strength player_motion.api.launch = @s hoverboard.jumpheight

#execute if score #air_blocks var matches 11..14 run scoreboard players operation $strength player_motion.api.launch 

## 0.8 = 8 / 10

execute if score #air_blocks var matches 8..10 run scoreboard players operation $strength player_motion.api.launch *= #8 var
execute if score #air_blocks var matches 8..10 run scoreboard players operation $strength player_motion.api.launch /= #10 var

execute if score #air_blocks var matches 3..7 run scoreboard players operation $strength player_motion.api.launch *= #5 var
execute if score #air_blocks var matches 3..7 run scoreboard players operation $strength player_motion.api.launch /= #10 var


execute if score #air_blocks var matches ..2 run scoreboard players operation $strength player_motion.api.launch *= #3 var
execute if score #air_blocks var matches ..2 run scoreboard players operation $strength player_motion.api.launch /= #10 var



execute unless entity @s[gamemode=creative] at @s rotated ~ -90 run function player_motion:api/launch_looking
tag @s add hoverbored.jump
attribute @s minecraft:gravity base set 0