execute if score @s y_motion matches -20.. run return run scoreboard players remove @s y_motion 10
execute if score @s y_motion matches -50..-20 run return 1
execute if score @s y_motion matches ..-50 run return run scoreboard players add @s y_motion 10
