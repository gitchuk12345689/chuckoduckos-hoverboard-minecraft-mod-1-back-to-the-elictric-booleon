## escape the hoverbored. (press shift)
tag @s remove hoverboard

attribute @s minecraft:gravity base set 0.08
attribute @s fall_damage_multiplier base set 1

# remove it from overworld
scoreboard players operation #test hoverboard.id = @s hoverboard.id
execute as @e[type=item_display,tag=hoverboard] if score @s hoverboard.id = #test hoverboard.id run kill @s

# add back to inventory

