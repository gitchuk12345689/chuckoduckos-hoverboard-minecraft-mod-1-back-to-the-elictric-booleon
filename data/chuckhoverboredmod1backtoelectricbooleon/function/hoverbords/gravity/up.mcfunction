execute if score #average_height var matches 11..14 run return run scoreboard players add @s y_motion 1
execute if score #average_height var matches 8..10 run return run scoreboard players add @s y_motion 2
execute if score #average_height var matches 3..7 run return run scoreboard players add @s y_motion 3
execute if score #average_height var matches ..2 run return run scoreboard players add @s y_motion 4

#/attribute @s minecraft:gravity modifier add hoverboard -0.08 add_value