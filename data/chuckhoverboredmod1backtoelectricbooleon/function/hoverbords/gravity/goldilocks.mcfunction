execute if score @s y_motion matches ..-5 run return run attribute @s minecraft:gravity base set -0.0035
execute if score @s y_motion matches 0 run return run attribute @s minecraft:gravity base set 0
execute if score @s y_motion matches 5.. run return run attribute @s minecraft:gravity base set 0.0035