scoreboard players remove #tp_distance var 1
execute if block ~ ~ ~ #air run tag @s add tp.success

particle flame
execute if entity @s[tag=tp.success] run tp @s ^ ^ ^

tag @s remove tp.success

execute at @s if score #tp_distance var matches 1.. positioned ^ ^ ^1 run function chuckhoverboredmod1backtoelectricbooleon:teleporting_boots/check