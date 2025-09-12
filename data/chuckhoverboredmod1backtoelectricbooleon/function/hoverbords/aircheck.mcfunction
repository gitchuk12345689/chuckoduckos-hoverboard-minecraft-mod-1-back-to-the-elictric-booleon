# check the air
scoreboard players add #air_blocks var 1
execute unless score #air_blocks var matches 100.. positioned ~ ~-0.1 ~ if block ~ ~ ~ #air run function chuckhoverboredmod1backtoelectricbooleon:hoverbords/aircheck
execute unless score #air_blocks var matches 100.. positioned ~ ~-0.1 ~ if block ~ ~ ~ water run scoreboard players set #on hoverboard.on_water 1