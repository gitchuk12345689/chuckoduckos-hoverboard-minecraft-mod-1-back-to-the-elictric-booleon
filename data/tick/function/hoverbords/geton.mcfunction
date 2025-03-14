## stand on the hoverbored (right click the item)
tag @s add hoverboard

execute store result score @s hoverboard.style run data get entity @s SelectedItem.components."minecraft:custom_data".hoverboard_style 1

attribute @s minecraft:gravity base set 0.08
attribute @s fall_damage_multiplier base set 0.0
scoreboard players set @s speed 1

# Default Hoverboard Stats:
scoreboard players set @s hoverboard.max_speed 499
scoreboard players set @s hoverboard.acceleration 10
scoreboard players set @s hoverboard.min_speed -99
scoreboard players set @s hoverboard.deceleration 10
scoreboard players set @s hoverboard.height 10
scoreboard players set @s hoverboard.on_water 80
scoreboard players set @s hoverboard.stepheight 5

## create a hoverboard in the oevrworld
execute if score @s hoverboard.style matches 1 run summon item_display ~ ~ ~ {Tags:["new.hoverboard", "hoverboard"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.8f,0f],scale:[1.5f,1.5f,1.5f]},item:{id:"minecraft:amethyst_shard",count:1,components:{"item_model":"hoverbored"}}}
#bat
execute if score @s hoverboard.style matches 2 run summon item_display ~ ~ ~ {Tags:["new.hoverboard", "hoverboard"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.8f,0f],scale:[1.5f,1.5f,1.5f]},item:{id:"minecraft:amethyst_shard",count:1,components:{"item_model":"batboard"}}}
execute if score @s hoverboard.style matches 2 run scoreboard players set @s hoverboard.max_speed 549
execute if score @s hoverboard.style matches 2 run scoreboard players set @s hoverboard.min_speed -99
execute if score @s hoverboard.style matches 2 run scoreboard players set @s hoverboard.acceleration 11
execute if score @s hoverboard.style matches 2 run scoreboard players set @s hoverboard.deceleration 12
execute if score @s hoverboard.style matches 2 run scoreboard players set @s hoverboard.height 17
#sonci
execute if score @s hoverboard.style matches 3 run summon item_display ~ ~ ~ {Tags:["new.hoverboard", "hoverboard"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.2f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:amethyst_shard",count:1,components:{"item_model":"sonicsbored"}}}
execute if score @s hoverboard.style matches 3 run scoreboard players set @s hoverboard.max_speed 2000000000
execute if score @s hoverboard.style matches 3 run scoreboard players set @s hoverboard.min_speed 0
execute if score @s hoverboard.style matches 3 run scoreboard players set @s hoverboard.acceleration 1
execute if score @s hoverboard.style matches 3 run scoreboard players set @s hoverboard.deceleration 10
execute if score @s hoverboard.style matches 3 run scoreboard players set @s hoverboard.height 6
execute if score @s hoverboard.style matches 3 run scoreboard players set @s hoverboard.stepheight -3
#boaty the boatboat
execute if score @s hoverboard.style matches 4 run summon item_display ~ ~ ~ {Tags:["new.hoverboard", "hoverboard"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.2f,0f],scale:[1.5f,1.5f,1.5f]},item:{id:"minecraft:amethyst_shard",count:1,components:{"item_model":"oak_boat"}}}
execute if score @s hoverboard.style matches 4 run scoreboard players set @s hoverboard.max_speed 400
execute if score @s hoverboard.style matches 4 run scoreboard players set @s hoverboard.min_speed -200
execute if score @s hoverboard.style matches 4 run scoreboard players set @s hoverboard.acceleration 5
execute if score @s hoverboard.style matches 4 run scoreboard players set @s hoverboard.deceleration 20
execute if score @s hoverboard.style matches 4 run scoreboard players set @s hoverboard.height 5
execute if score @s hoverboard.style matches 4 run scoreboard players set @s hoverboard.on_water 100



scoreboard players add $global.id hoverboard.id 1
scoreboard players operation @s hoverboard.id = $global.id hoverboard.id
scoreboard players operation @n[type=item_display, tag=new.hoverboard] hoverboard.id = $global.id hoverboard.id
tag @n[type=item_display, tag=new.hoverboard] remove new.hoverboard