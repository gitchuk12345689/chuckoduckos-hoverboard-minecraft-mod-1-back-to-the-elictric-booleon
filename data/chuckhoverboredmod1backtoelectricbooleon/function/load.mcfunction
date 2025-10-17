## loading everything
say Chucks data loaded!
scoreboard objectives add shows minecraft.used:diamond_boots
scoreboard objectives add paints minecraft.used:iron_leggings
scoreboard objectives add var dummy
scoreboard objectives add y_motion dummy
scoreboard objectives add speed dummy
scoreboard objectives add boost dummy
scoreboard objectives add fuel dummy




# Constants
scoreboard players set #2 var 2
scoreboard players set #3 var 3
scoreboard players set #5 var 5
scoreboard players set #8 var 8
scoreboard players set #10 var 10
scoreboard players set #100 var 100

# Hoverboard Stat
scoreboard objectives add hoverboard.id dummy
scoreboard objectives add hoverboard.style dummy
scoreboard objectives add hoverboard.max_speed dummy
scoreboard objectives add hoverboard.acceleration dummy
scoreboard objectives add hoverboard.deceleration dummy
scoreboard objectives add hoverboard.min_speed dummy
scoreboard objectives add hoverboard.height dummy
# % of speed on water (multiplied by *=/tick)
scoreboard objectives add hoverboard.on_water dummy
scoreboard objectives add hoverboard.stepheight dummy
scoreboard objectives add hoverboard.jumpheight dummy

scoreboard objectives add hoverboard.jump_cooldown dummy

scoreboard objectives add hoverboard.height.1 dummy
scoreboard objectives add hoverboard.height.2 dummy

## new

forceload add 0 0
kill @e[type=marker,tag=hoverboard.pos]
summon marker 0 0 0 {Tags:["hoverboard.pos"]}