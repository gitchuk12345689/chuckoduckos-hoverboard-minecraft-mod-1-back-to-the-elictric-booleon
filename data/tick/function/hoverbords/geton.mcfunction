## stand on the hoverbored (right click the item)
tag @s add hoverboard

execute store result score @s hoverboard.style run data get entity @s SelectedItem.components."minecraft:custom_data".hoverboard_style 1

attribute @s minecraft:gravity base set 0.08
attribute @s fall_damage_multiplier base set 0.0
scoreboard players set @s speed 1

## create a hoverboard in the oevrworld
summon item_display ~ ~ ~ {Tags:["new.hoverboard", "hoverboard"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]},item:{id:"minecraft:amethyst_shard",count:1,components:{"item_model":"hovernormal"}}}

scoreboard players add $global.id hoverboard.id 1
scoreboard players operation @s hoverboard.id = $global.id hoverboard.id
scoreboard players operation @n[type=item_display, tag=new.hoverboard] hoverboard.id = $global.id hoverboard.id
tag @n[type=item_display, tag=new.hoverboard] remove new.hoverboard