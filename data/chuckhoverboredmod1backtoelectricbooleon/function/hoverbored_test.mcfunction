
execute as @n[type=pig,tag=test] at @s rotated as @p run tp @s ~ ~ ~ ~ 0


execute positioned 0.0 0.0 0.0 rotated as @s positioned ^ ^ ^1 run tp @n[type=marker,tag=hoverboard.pos] ~ ~ ~

data modify entity @n[type=pig,tag=test] Motion set from entity @n[type=marker,tag=hoverboard.pos] Pos
#data merge entity @n[type=pig,tag=test] {Motion:[0.1f,0.0f,0.0f]}