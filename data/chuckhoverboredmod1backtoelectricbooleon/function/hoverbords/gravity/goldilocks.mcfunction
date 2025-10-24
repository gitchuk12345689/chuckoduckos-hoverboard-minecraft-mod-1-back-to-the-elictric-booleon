execute if score @s y_motion matches ..-5 run return run scoreboard players remove @s y_motion 1
execute if score @s y_motion matches 0 run return 1
execute if score @s y_motion matches 5.. run return run scoreboard players add @s y_motion 1
