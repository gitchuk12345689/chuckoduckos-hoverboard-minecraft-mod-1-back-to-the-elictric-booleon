## main tick function
# it handles the teleporting boots boots
execute as @a at @s if score @s shows matches 1.. run function chuckhoverboredmod1backtoelectricbooleon:teleporting_boots/tick
execute as @a at @s if score @s paints matches 1.. run function chuckhoverboredmod1backtoelectricbooleon:levitorpaints

execute as @a[tag=hoverboard] at @s run function chuckhoverboredmod1backtoelectricbooleon:hoverbored

execute as @a[tag=!hoverboard.recipe] if predicate chuckhoverboredmod1backtoelectricbooleon:jump run function chuckhoverboredmod1backtoelectricbooleon:recipes