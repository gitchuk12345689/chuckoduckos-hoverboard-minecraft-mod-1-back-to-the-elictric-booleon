## main hoverbored

# be around half a block above ground
tag @s remove hoverbored.down
tag @s remove hoverbored.up

execute store result score @s y_motion run data get entity @s Motion[1] 1000

## the number for height subtracts it from fifteen (in five out ten)
scoreboard players operation #air_blocks var = @s hoverboard.height 
scoreboard players set #on hoverboard.on_water 0
execute positioned ~ ~-0.1 ~ run function tick:hoverbords/aircheck
scoreboard players operation AirBlocks y_motion = #air_blocks var

## its stepping time
#execute rotated ~ 0 positioned ^ ^ ^1 unless block ~ ~ ~ #air run particle flame
execute rotated ~ 0 positioned ^ ^ ^1 unless block ~ ~ ~ #air run scoreboard players operation #air_blocks var -= @s hoverboard.stepheight

## goal
# 10.. fast down
# 2..9 down at varying levels
# 1 stop it
# 0 up

# going Down
execute if score #air_blocks var matches 100.. if score @s y_motion matches -200.. run attribute @s minecraft:gravity base set 0.08
execute if score #air_blocks var matches 100.. if score @s y_motion matches -500..-200 run attribute @s minecraft:gravity base set 0.0
execute if score #air_blocks var matches 100.. if score @s y_motion matches ..-500 run attribute @s minecraft:gravity base set -0.08

execute if score #air_blocks var matches 40..90 if score @s y_motion matches -50.. run attribute @s minecraft:gravity base set 0.01
execute if score #air_blocks var matches 40..90 if score @s y_motion matches -101..-50 run attribute @s minecraft:gravity base set 0
execute if score #air_blocks var matches 40..90 if score @s y_motion matches ..-101 run attribute @s minecraft:gravity base set -0.01

execute if score #air_blocks var matches 20..30 if score @s y_motion matches -20.. run attribute @s minecraft:gravity base set 0.0035
execute if score #air_blocks var matches 20..30 if score @s y_motion matches -50..-20 run attribute @s minecraft:gravity base set 0.0
execute if score #air_blocks var matches 20..30 if score @s y_motion matches ..-50 run attribute @s minecraft:gravity base set -0.0035

#those bears' intruder
execute if score #air_blocks var matches 15..19 if score @s y_motion matches ..-5 run attribute @s minecraft:gravity base set -0.0035
execute if score #air_blocks var matches 15..19 if score @s y_motion matches 0 run attribute @s minecraft:gravity base set 0
execute if score #air_blocks var matches 15..19 if score @s y_motion matches 5.. run attribute @s minecraft:gravity base set 0.0035

# going up
execute if score #air_blocks var matches 11..14 run attribute @s minecraft:gravity base set -0.005
execute if score #air_blocks var matches 8..10 run attribute @s minecraft:gravity base set -0.01
execute if score #air_blocks var matches 3..7 run attribute @s minecraft:gravity base set -0.02
execute if score #air_blocks var matches ..2 run attribute @s minecraft:gravity base set -0.03

# pmove automaticaly where you look

# execute if predicate tick:forward run say for
# execute if predicate tick:backward run say against

execute if predicate tick:forward if score @s speed < @s hoverboard.max_speed run scoreboard players operation @s speed += @s hoverboard.acceleration
execute if predicate tick:backward if score @s speed > @s hoverboard.min_speed run scoreboard players operation @s speed -= @s hoverboard.deceleration


scoreboard players operation $strength player_motion.api.launch = @s speed

execute if predicate tick:hold_ring run function tick:hoverbords/boosting

execute if predicate tick:forward run scoreboard players remove $strength player_motion.api.launch 200
execute if predicate tick:backward run scoreboard players add $strength player_motion.api.launch 200

#you are located above the liquid commonly known as water
execute if score @s hoverboard.style matches 3 if score @s speed matches 1000.. if score #on hoverboard.on_water matches 1 run scoreboard players set @s hoverboard.on_water 0 
execute if score #on hoverboard.on_water matches 1 run function tick:hoverbords/on_water

# scoreboard players operation $strength player_motion.api.launch = @s move
execute unless entity @s[gamemode=creative] at @s rotated ~ 0 run function player_motion:api/launch_looking

# leave
execute if predicate tick:sneak run function tick:hoverbords/getoff

scoreboard players operation #test hoverboard.id = @s hoverboard.id
execute as @e[type=item_display,tag=hoverboard] if score @s hoverboard.id = #test hoverboard.id run tp @s ~ ~ ~ ~ 0
#playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 0.1 2

execute if score @s hoverboard.style matches 1 run particle flame ~ ~ ~ 0.1 0.1 0.1 0 3
execute if score @s hoverboard.style matches 2 run particle item{item:"bat_spawn_egg"} ~ ~ ~ 0.1 0.1 0.1 0 3
execute if score @s hoverboard.style matches 3 run particle minecraft:trial_spawner_detection_ominous ~ ~-1 ~ 0.1 0.1 0.1 0 3
execute if score @s hoverboard.style matches 3 if score @s speed matches 1000.. run particle explosion ~ ~-1 ~ 0.1 0.1 0.1 0 1
execute if score @s hoverboard.style matches 4 run particle fishing ~ ~ ~ 0.25 0.1 0.25 0 5

## everybody do the jump
execute if predicate tick:jump run execute unless entity @s[tag=hoverbored.jump] at @s rotated ~ -90 run function tick:hoverbords/jump
execute if entity @s[tag=hoverbored.jump] run attribute @s minecraft:gravity base set 0.04
execute if score #air_blocks var matches ..19 run tag @s remove hoverbored.jump