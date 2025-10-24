execute if score @s y_motion matches -200.. run return run attribute @s minecraft:gravity base set 0.0
execute if score @s y_motion matches -500..-200 run return run attribute @s minecraft:gravity modifier add hoverboard -0.08 add_value
execute if score @s y_motion matches ..-500 run return run attribute @s minecraft:gravity modifier add hoverboard -0.16 add_value