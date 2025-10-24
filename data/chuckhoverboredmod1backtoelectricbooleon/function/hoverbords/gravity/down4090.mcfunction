execute if score @s y_motion matches -50.. run return run scoreboard players remove @s y_motion 20

execute if score @s y_motion matches -101..-50 run scoreboard players remove @s y_motion 10

execute if score @s y_motion matches ..-101 run return run scoreboard players add @s y_motion 5
