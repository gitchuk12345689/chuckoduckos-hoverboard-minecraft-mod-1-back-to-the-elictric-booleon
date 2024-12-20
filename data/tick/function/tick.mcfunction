## main tick function
# it handles the teleporting boots boots
execute as @a at @s if score @s shows matches 1.. run function item:teleporting_boots/tick
execute as @a at @s if score @s paints matches 1.. run function item:levitorpaints

execute as @a[tag=hoverboard] at @s run function tick:hoverbored