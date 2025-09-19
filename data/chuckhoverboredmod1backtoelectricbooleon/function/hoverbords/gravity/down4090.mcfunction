execute if score @s y_motion matches -50.. run return run attribute @s minecraft:gravity base set 0.01
execute if score @s y_motion matches -101..-50 run return run attribute @s minecraft:gravity base set 0
execute if score @s y_motion matches ..-101 run return run attribute @s minecraft:gravity base set -0.01