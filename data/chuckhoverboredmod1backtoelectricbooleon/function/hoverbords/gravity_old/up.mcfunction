execute if score #average_height var matches 11..14 run return run attribute @s minecraft:gravity modifier add hoverboard -0.085 add_value
execute if score #average_height var matches 8..10 run return run attribute @s minecraft:gravity modifier add hoverboard -0.09 add_value
execute if score #average_height var matches 3..7 run return run attribute @s minecraft:gravity modifier add hoverboard -0.10 add_value
execute if score #average_height var matches ..2 run return run attribute @s minecraft:gravity modifier add hoverboard -0.11 add_value

#/attribute @s minecraft:gravity modifier add hoverboard -0.08 add_value