execute if score #average_height var matches 11..14 run return run scoreboard players add @s y_motion 10
execute if score #average_height var matches 8..10 run return run scoreboard players add @s y_motion 20
execute if score #average_height var matches 3..7 run return run scoreboard players add @s y_motion 30
execute if score #average_height var matches ..2 run return run scoreboard players add @s y_motion 40

#/attribute @s minecraft:gravity modifier add hoverboard -0.08 add_value