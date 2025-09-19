## main hoverbored

# be around half a block above ground

execute store result score @s y_motion run data get entity @s Motion[1] 1000

## the number for height subtracts it from fifteen (in five out ten)
scoreboard players operation #air_blocks var = @s hoverboard.height
scoreboard players set #on hoverboard.on_water 0
execute positioned ~ ~-0.1 ~ run function chuckhoverboredmod1backtoelectricbooleon:hoverbords/aircheck
scoreboard players operation AirBlocks y_motion = #air_blocks var

## its stepping time
#execute rotated ~ 0 positioned ^ ^ ^1 unless block ~ ~ ~ #air run particle flame
execute rotated ~ 0 positioned ^ ^ ^1 unless block ~ ~ ~ #air run scoreboard players operation #air_blocks var -= @s hoverboard.stepheight

## goal
# 10.. fast down
# 2..9 down at varying levels
# 1 stop it
# 0 up

# TWO OPTIONS:
# 1. Calculate Y-Motion with an acceleration value, gets more negative longer above 
# 2. Average out #air_blocks over several ticks

scoreboard players operation #average_height var = #air_blocks var
scoreboard players operation #average_height var += @s hoverboard.height.1
scoreboard players operation #average_height var += @s hoverboard.height.2
scoreboard players operation #average_height var /= #3 var


#going somewhere
execute run function chuckhoverboredmod1backtoelectricbooleon:hoverbords/gravity

# pmove automaticaly where you look

# execute if predicate chuckhoverboredmod1backtoelectricbooleon:forward run say for
# execute if predicate chuckhoverboredmod1backtoelectricbooleon:backward run say against

execute if predicate chuckhoverboredmod1backtoelectricbooleon:forward if score @s speed < @s hoverboard.max_speed run scoreboard players operation @s speed += @s hoverboard.acceleration
execute if predicate chuckhoverboredmod1backtoelectricbooleon:backward if score @s speed > @s hoverboard.min_speed run scoreboard players operation @s speed -= @s hoverboard.deceleration


scoreboard players operation $strength player_motion.api.launch = @s speed

#BOOST!!!
execute unless score @s fuel matches 1.. if predicate chuckhoverboredmod1backtoelectricbooleon:hold_ring run function chuckhoverboredmod1backtoelectricbooleon:hoverbords/fuel
execute unless score @s fuel matches 1.. if predicate chuckhoverboredmod1backtoelectricbooleon:hold_ring10 run function chuckhoverboredmod1backtoelectricbooleon:hoverbords/fuel10
execute if score @s fuel matches 1.. run function chuckhoverboredmod1backtoelectricbooleon:hoverbords/boosting



execute if predicate chuckhoverboredmod1backtoelectricbooleon:forward run scoreboard players remove $strength player_motion.api.launch 200
execute if predicate chuckhoverboredmod1backtoelectricbooleon:backward run scoreboard players add $strength player_motion.api.launch 200

#you are located above the liquid commonly known as water
execute if score @s hoverboard.style matches 3 if score @s speed matches 3000.. if score #on hoverboard.on_water matches 1 run scoreboard players set @s hoverboard.on_water 0 
execute if score #on hoverboard.on_water matches 1 run function chuckhoverboredmod1backtoelectricbooleon:hoverbords/on_water

#you are located inside the liquid commonly known as water
##optimize to be one check??????????????????
execute if predicate chuckhoverboredmod1backtoelectricbooleon:in_water run function chuckhoverboredmod1backtoelectricbooleon:hoverbords/in_water

# scoreboard players operation $strength player_motion.api.launch = @s move
execute unless entity @s[gamemode=creative] at @s rotated ~ 0 run function player_motion:api/launch_looking

scoreboard players operation #test hoverboard.id = @s hoverboard.id
execute as @e[type=item_display,tag=hoverboard] if score @s hoverboard.id = #test hoverboard.id run tp @s ~ ~ ~ ~ 0
playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 0.1 2

function chuckhoverboredmod1backtoelectricbooleon:hoverbords/stylepoints/particles

## everybody do the jump
execute if predicate chuckhoverboredmod1backtoelectricbooleon:jump unless score @s hoverboard.jump_cooldown matches 1.. at @s[tag=!hoverbored.jump] rotated ~ -90 run function chuckhoverboredmod1backtoelectricbooleon:hoverbords/jump
execute if entity @s[tag=hoverbored.jump] run attribute @s minecraft:gravity base set 0.04
execute unless score @s hoverboard.jump_cooldown matches 1.. if score #air_blocks var matches ..19 run tag @s remove hoverbored.jump
execute if score @s hoverboard.jump_cooldown matches 1.. run scoreboard players remove @s hoverboard.jump_cooldown 1


# Average Height Calc - coyote Time!
scoreboard players operation @s hoverboard.height.2 = @s hoverboard.height.1
scoreboard players operation @s hoverboard.height.1 = #air_blocks var

# leave
execute if predicate chuckhoverboredmod1backtoelectricbooleon:sneak run function chuckhoverboredmod1backtoelectricbooleon:hoverbords/getoff