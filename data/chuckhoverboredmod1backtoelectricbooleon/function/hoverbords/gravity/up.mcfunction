execute if score #average_height var matches 11..14 run return run attribute @s minecraft:gravity base set -0.005
execute if score #average_height var matches 8..10 run return run attribute @s minecraft:gravity base set -0.01
execute if score #average_height var matches 3..7 run return run attribute @s minecraft:gravity base set -0.02
execute if score #average_height var matches ..2 run return run attribute @s minecraft:gravity base set -0.03