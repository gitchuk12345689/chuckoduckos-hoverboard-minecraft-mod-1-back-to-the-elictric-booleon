# going Down
execute if score #average_height var matches 100.. if score @s y_motion matches -200.. run attribute @s minecraft:gravity base set 0.08
execute if score #average_height var matches 100.. if score @s y_motion matches -500..-200 run attribute @s minecraft:gravity base set 0.0
execute if score #average_height var matches 100.. if score @s y_motion matches ..-500 run attribute @s minecraft:gravity base set -0.08

execute if score #average_height var matches 40..90 if score @s y_motion matches -50.. run attribute @s minecraft:gravity base set 0.01
execute if score #average_height var matches 40..90 if score @s y_motion matches -101..-50 run attribute @s minecraft:gravity base set 0
execute if score #average_height var matches 40..90 if score @s y_motion matches ..-101 run attribute @s minecraft:gravity base set -0.01

execute if score #average_height var matches 20..30 if score @s y_motion matches -20.. run attribute @s minecraft:gravity base set 0.0035
execute if score #average_height var matches 20..30 if score @s y_motion matches -50..-20 run attribute @s minecraft:gravity base set 0.0
execute if score #average_height var matches 20..30 if score @s y_motion matches ..-50 run attribute @s minecraft:gravity base set -0.0035

#those bears' intruder
execute if score #average_height var matches 15..19 if score @s y_motion matches ..-5 run attribute @s minecraft:gravity base set -0.0035
execute if score #average_height var matches 15..19 if score @s y_motion matches 0 run attribute @s minecraft:gravity base set 0
execute if score #average_height var matches 15..19 if score @s y_motion matches 5.. run attribute @s minecraft:gravity base set 0.0035

# going up
execute if score #average_height var matches ..14 run return run function chuckhoverboredmod1backtoelectricbooleon:hoverbords/gravity/up
